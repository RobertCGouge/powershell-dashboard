FROM ironmansoftware/universal:latest
ENV TZ ETC/UTC
RUN apt-get install -y tzdata
LABEL description="Universal - The ultimate platform for building web-based IT Tools" 

EXPOSE 5000
VOLUME ["/data"]
ENV Data__RepositoryPath ./data/Repository
ENV Data__ConnectionString ./data/database.db
ENV UniversalDashboard__AssetsFolder ./data/UniversalDashboard 
ENV Logging__Path ./data/logs/log.txt
ENTRYPOINT ["./home/Universal/Universal.Server"]