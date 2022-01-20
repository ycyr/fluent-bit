local count = 0
function modify_kafka_message(tag, timestamp, record)
    count = count + 1
    local payload = record.payload
    payload.status = 'processed '..payload.name..', total records: '..tostring(count)
    return 1, timestamp, payload
end
