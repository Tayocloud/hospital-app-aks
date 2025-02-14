terraform { 
  cloud { 
    
    organization = "teescloudtech" 

    workspaces { 
      name = "GR25_PROJECT" 
    } 
  } 
}