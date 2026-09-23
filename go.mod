module vulnerable-go-repo

go 1.19

require (

	// --- Container / Kubernetes ---
	// CVE-2021-41103, CVE-2022-23648, CVE-2022-31030
	github.com/containerd/containerd v1.5.7
	// CVE-2022-41912
	github.com/crewjam/saml v0.4.5

	// --- JWT / Auth ---
	// CVE-2020-26160
	github.com/dgrijalva/jwt-go v3.2.0+incompatible

	// --- Web Frameworks ---
	// CVE-2023-26125, CVE-2023-29401
	github.com/gin-gonic/gin v1.7.0
	// CVE-2023-49568, CVE-2023-49569
	github.com/go-git/go-git/v5 v5.4.2

	// --- Crypto ---
	// CVE-2024-28180
	github.com/go-jose/go-jose/v3 v3.0.0
	// CVE-2022-36085
	github.com/go-ldap/ldap/v3 v3.4.1
	// CVE-2022-30688, CVE-2023-33556
	github.com/gofiber/fiber/v2 v2.32.0
	// CVE-2021-3121
	github.com/gogo/protobuf v1.3.2
	// CVE-2024-51744
	github.com/golang-jwt/jwt/v4 v4.0.0
	// CVE-2024-24786
	github.com/golang/protobuf v1.5.2
	// CVE-2020-27813
	github.com/gorilla/websocket v1.4.2

	// --- CLI / Config ---
	// CVE-2022-26945, CVE-2022-30321, CVE-2022-30322, CVE-2022-30323
	github.com/hashicorp/go-getter v1.5.9

	// --- Database Drivers ---
	// CVE-2024-27304
	github.com/jackc/pgx/v4 v4.13.0
	// CVE-2022-40083, CVE-2024-29927
	github.com/labstack/echo/v4 v4.6.0

	// --- Misc with known CVEs ---
	// CVE-2024-0406
	github.com/mholt/archiver/v3 v3.5.0
	// CVE-2022-26652, CVE-2022-29946, CVE-2023-47090
	github.com/nats-io/nats-server/v2 v2.6.1
	// CVE-2021-41190
	github.com/opencontainers/image-spec v1.0.1
	// CVE-2021-43784, CVE-2022-29162, CVE-2024-21626
	github.com/opencontainers/runc v1.0.2
	// CVE-2022-21698
	github.com/prometheus/client_golang v1.11.0
	// CVE-2021-3538
	github.com/satori/go.uuid v1.2.0
	// CVE-2021-42248, CVE-2021-42836
	github.com/tidwall/gjson v1.9.0
	// CVE-2021-20329
	go.mongodb.org/mongo-driver v1.7.2
	// CVE-2022-27191, CVE-2023-48795
	golang.org/x/crypto v0.0.0-20220214200702-86341886e292
	// CVE-2022-41727, CVE-2023-36308
	golang.org/x/image v0.0.0-20211028202545-6944b10bf410
	// --- Networking / HTTP ---
	// CVE-2022-27664, CVE-2022-41721, CVE-2022-41723, CVE-2023-3978, CVE-2023-39325, CVE-2023-44487
	golang.org/x/net v0.0.0-20220225172249-27dd8689420f
	// CVE-2022-32149, CVE-2024-45336
	golang.org/x/text v0.3.7
	// CVE-2023-44487
	google.golang.org/grpc v1.40.0

	// --- Protobuf / gRPC ---
	// CVE-2024-24786
	google.golang.org/protobuf v1.27.1

	// --- YAML / Data Parsing ---
	// CVE-2019-11254, CVE-2022-3064
	gopkg.in/yaml.v2 v2.4.0
	// CVE-2022-28948
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b
)
