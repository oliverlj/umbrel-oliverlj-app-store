export APP_MEMPOOL_FULCRUM_HOST="oliverlj-mempool-fulcrum_web_1"
export APP_MEMPOOL_FULCRUM_PORT="4001"
export APP_MEMPOOL_FULCRUM_API_HOST="oliverlj-mempool-fulcrum_api_1"
export APP_MEMPOOL_FULCRUM_DB_HOST="oliverlj-mempool-fulcrum_mariadb_1"

hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}/hostname"
export APP_MEMPOOL_FULCRUM_HIDDEN_SERVICE="$(cat "${hidden_service_file}" 2>/dev/null || echo "")"