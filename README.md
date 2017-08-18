### Run Scout2 from NCCGroup as Docker image

Scout2 is used to assess your AWS Security posture
```
Scout2 project at https://github.com/nccgroup/Scout2
```

1. Put Dockerfile and scout2-entrypoint.sh in directory.
2. In directory execute ‘docker build -t demo-scout2 .’
   - Will create scout2 docker image
3. Execute the below run.sh script
   - Passes in AWS Credentials from ENV
   - Opens up HTML reports
