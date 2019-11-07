{
    "id": "bd916388-6a4b-400f-bc12-f7234f89cce0",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "Player2",
    "eventList": [
        {
            "id": "c86987b2-7cc6-4461-bbb3-ea04d9b01261",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "bd916388-6a4b-400f-bc12-f7234f89cce0"
        },
        {
            "id": "fbdd3edd-78d0-483e-894b-eebef491633b",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "bd916388-6a4b-400f-bc12-f7234f89cce0"
        },
        {
            "id": "a035e95c-c503-47be-aaed-b8dea4ed2f69",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "bd916388-6a4b-400f-bc12-f7234f89cce0"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "61a724b6-9e38-4467-8f43-f1bb9094b7fa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "player_HP",
            "varType": 0
        },
        {
            "id": "028e89c3-2018-4a60-b8ac-02e5ecdec2c9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "player_state",
            "varType": 0
        },
        {
            "id": "5a7e4dbe-65c4-4839-ab88-d0dff88e975f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "player_facing_direction",
            "varType": 0
        },
        {
            "id": "87ae05f2-9293-414c-a2d2-3dc2a1afec28",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "player_speed",
            "varType": 0
        },
        {
            "id": "47ee5c8d-205f-426f-aa33-86366884fba6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "player_focus_speed",
            "varType": 0
        },
        {
            "id": "338eace8-5d22-45c3-bb1c-814b8dc1f930",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "player_hitbox",
            "varType": 0
        },
        {
            "id": "c4a3b04b-008e-4964-8a0e-19b2b1d26260",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "sliding_frames_max",
            "varType": 0
        },
        {
            "id": "6e4b410d-2e0d-4f4f-9fb7-9dc9d12d1c9d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sliding_frames_counter",
            "varType": 0
        },
        {
            "id": "35cb6e8c-1962-489e-a0b4-fe3b70b77172",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sliding_direction_x",
            "varType": 0
        },
        {
            "id": "a340cc0b-d491-47f5-a418-1af97df38ca6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sliding_direction_y",
            "varType": 0
        },
        {
            "id": "fc43d114-7af1-41ca-84e8-81cef32fb01a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "40",
            "varName": "sliding_speed",
            "varType": 0
        },
        {
            "id": "d4c400d6-5143-4951-ae19-d35b939399b8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "first_time",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "7d6216f5-7061-4e5e-9a2a-29dfe6129bee",
    "visible": true
}