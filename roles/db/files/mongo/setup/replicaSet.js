rs.initiate({
  _id: "rs0",
  members: [
    { _id: 0, host: "MONGO_HOST_IP:27010" },
    { _id: 1, host: "MONGO_HOST_IP:27011" },
    { _id: 2, host: "MONGO_HOST_IP:27012" },
  ],
});

rs.conf();
