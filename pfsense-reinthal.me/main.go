package main

import (
	"context"
	"fmt"
	"os"
	"time"

	"github.com/reinthal/pfsense-api-goclient/v2/pfsenseapi"
)

func main() {

	// Define a constant VLAN request
	var newVLANRequest = pfsenseapi.VLANRequest{
		If:  "igb2",
		Tag: 44,
	}
	ctx := context.Background()
	config := pfsenseapi.Config{
		Host:             os.Getenv("TF_VAR_pfsense_url"),
		LocalAuthEnabled: true,
		User:             os.Getenv("TF_VAR_pfsense_user"),
		Password:         os.Getenv("TF_VAR_pfsense_password"),
		SkipTLS:          true, // Set to true if using self-signed certificates
		Timeout:          1 * time.Minute,
	}
	client := pfsenseapi.NewClient(config)

	vlans, err := client.Interface.ListVLANs(ctx)
	if err != nil {
		panic(err)
	}

	for _, vlan := range vlans {
		if vlan.Tag == newVLANRequest.Tag {
			fmt.Printf("VLAN with tag %d Already created, Deleting it\n", vlan.Tag)
			vlan, err := client.Interface.DeleteVLAN(ctx, vlan.Id)
			if err != nil {
				panic(err)
			}
			fmt.Println(vlan.Tag)
			return
		}
	}
	fmt.Println("Could not find tag. Creating VLAN")

	vlan, err := client.Interface.CreateVLAN(ctx, newVLANRequest)
	if err != nil {
		panic(err)
	}
	fmt.Println(vlan.Tag)
}
