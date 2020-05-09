terraform { 
backend "s3" { 
bucket = "sdlc-ken-dev" 
key = "vet/us-east-1/sharedtools/dev-ken/ken.tfstate" 
region = "us-east-1" 
  } 
} 
