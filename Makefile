k8s-deploy:
	kubectl create ns otus-msa-hw8
	kubectl apply -n otus-msa-hw8 -f order-service/charts
	kubectl apply -n otus-msa-hw8 -f storage-service/charts
	kubectl apply -n otus-msa-hw8 -f delivery-service/charts
	kubectl apply -n otus-msa-hw8 -f payment-service/charts

k8s-remove:
	kubectl delete ns otus-msa-hw8

newman:
	newman run postman/order-saga.postman_collection.json

