# medicare-stats

1. Install docker desktop
2. Open terminal and run below command -
   
   docker volume create n8n_data
   
   docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n

3. Once the docker image is installed and the container is running, the n8n editor can be accessed at - http://localhost:5678
4. Install postgres and PgAdmin4 on local
5. Create agent_db database and execute the following sql script - https://github.com/amitxpamecha/medicare-stats/blob/main/medicare_stats_table_create_query.sql  
9. Checkout the workflow file https://github.com/amitxpamecha/medicare-stats/blob/main/Medicare_Data_Workflow.json
10. Import the workflow as given in below screenshot -

 ![image](https://github.com/user-attachments/assets/7ae86573-f884-4767-892d-cd2dbc0b7efe)

 11. On successful import, it should show workflow like below -

![image](https://github.com/user-attachments/assets/134206dd-8c9c-4003-998e-a7f451a38be8)

12. On click of postgres node in workflow, you need to validate the postgres credentials. Since n8n is running in the docker, the hostname to connect postgres installed on local will be host.docker.internal. Sharing the screenshot for futher validation -

![image](https://github.com/user-attachments/assets/e92fc35b-637d-45f2-99b3-d2a41e4311f9)


13. Once set up is done. Use chat window in workflow to provide City, State and Zipccode seaprated by space. Ex. Sugar Land TX 77479

 ![image](https://github.com/user-attachments/assets/cca73ec6-7b26-48a3-972c-a58e3684185e)

14. Apart from chat response, data will also get stored in Postgres as below -

![image](https://github.com/user-attachments/assets/81717220-a355-4eff-a8ce-72cd13f694b2)
