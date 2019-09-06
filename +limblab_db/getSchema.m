function obj = getSchema
persistent schemaObject
if isempty(schemaObject)
    schemaObject = dj.Schema(dj.conn, 'limblab_db', 'limblab_db');
end
obj = schemaObject;
end
