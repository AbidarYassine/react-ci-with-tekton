kubectl apply -f ./volumes/
kubectl apply -f ./tasks/
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-clone/0.5/git-clone.yaml
kubectl apply -f ./pipelines/
tkn pr delete nodejs-pipeline-run
kubectl apply -f ./pipelinerun/pipeline-runner.yaml

