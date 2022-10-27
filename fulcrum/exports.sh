export APP_FULCRUM_IP="10.21.22.5"
export APP_FULCRUM_PORT="3006"
export APP_FULCRUM_NODE_IP="10.21.21.102"

export APP_FULCRUM_NODE_PORT="51001"
export APP_FULCRUM_WS_PORT="51003"

BIN_ARGS=()
BIN_ARGS+=( "--datadir /data" )
BIN_ARGS+=( "--bitcoind ${APP_BITCOIN_NODE_IP}:${APP_BITCOIN_RPC_PORT}" )
BIN_ARGS+=( "--rpcuser ${APP_BITCOIN_RPC_USER}" )
BIN_ARGS+=( "--rpcpassword ${APP_BITCOIN_RPC_PASS}" )
BIN_ARGS+=( "--tcp 0.0.0.0:${APP_FULCRUM_NODE_PORT}" )
BIN_ARGS+=( "--ws 0.0.0.0:${APP_FULCRUM_WS_PORT}" )
BIN_ARGS+=( "/config/fulcrum.conf" )

export APP_FULCRUM_COMMAND=$(IFS=" "; echo "${BIN_ARGS[@]}")

# echo "${APP_FULCRUM_COMMAND}"

rpc_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-rpc/hostname"
export APP_FULCRUM_RPC_HIDDEN_SERVICE="$(cat "${rpc_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
