# open-api-genset
A toolset that supports the development of the OpenAPI.  
This project is a toolset to easily create a development environment using "[OpenAPITools/openapi-generator](https://github.com/OpenAPITools/openapi-generator)" and "[swagger-api/swagger-editor](https://github.com/swagger-api/swagger-editor)".

## Requirements
- Docker

## Usage
### 1. Image build & running.
```sh
docker-compose up -d
```

### 2. API build.
#### Linux or Unix
```sh
bash openapi-gen.sh -i openapi.yaml -g go -o go/out
```

#### Windows
```bat
openapi-gen.bat -i openapi.yaml -g go -o go/out
```

## Contributing
Pull requests and stars are always welcome.
Contributions are what make the open source community such an amazing place to be learn, inspire, and create.   
Any contributions you make are greatly appreciated.

1. Fork the Project.
2. Create your Feature Branch(`git checkout -b feature/amazing_feature`).
3. Commit your Changes(`git commit -m 'Add some changes'`).
4. Push to the Branch(`git push origin feature/amazing_feature`).
5. Open a Pull Request.

## Thanks
`OpenAPITools/openapi-generator` and `swagger-api/swagger-editor` are really great projects.  
I would like to express my gratitude to the developers.

## Author
- [github/atEaE](https://github.com/atEaE)
- [twitter/atEaE](https://twitter.com/EaE2626)

## License
MIT