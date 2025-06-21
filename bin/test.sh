#!/bin/zsh

# docker exec add-app-container npm run test -- --coverage
# docker exec add-app-container curl http://localhost:8080/api/sum?input1=1\&input2=2
docker exec -it add-app-container /bin/bash
# docker exec add-app-container npx stepci run stepci/workflow.yml
