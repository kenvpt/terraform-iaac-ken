terraform { 
backend "s3" { 
bucket = "sdlc-ken-dev" 
key = "vet/us-east-1/sharedtools/dev/infrastructure.tfstate" 
region = "us-east-1" 
  } 
} 
