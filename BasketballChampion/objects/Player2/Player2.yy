{
    "id": "efbabfa6-3508-4cea-a924-be91774036d5",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "Player2",
    "eventList": [
        {
            "id": "58488f0b-595c-4187-ac95-bdd49014fee3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "efbabfa6-3508-4cea-a924-be91774036d5"
        },
        {
            "id": "26c07149-9595-499e-912d-d77b1a6946c3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "efbabfa6-3508-4cea-a924-be91774036d5"
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
            "id": "a3650c0d-54ec-4be9-921a-18fc64f29a8d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "player_has_ball",
            "varType": 3
        },
        {
            "id": "13fc74fe-83d9-4f1b-82c4-35163102768c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "player_is_sliding",
            "varType": 3
        },
        {
            "id": "5e032fca-86a8-45f2-8d47-cbae55222aaa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "collided_with_ball",
            "varType": 3
        },
        {
            "id": "2119d21d-f374-4880-9c4a-8cf9eb3f9f78",
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
            "id": "eb1c9c44-0a03-48a5-a063-7314f448eb44",
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
            "id": "f5612184-c223-4a1c-8fba-97c3f615e46e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "50",
            "varName": "player_sliding_speed",
            "varType": 0
        },
        {
            "id": "f76345f2-c27f-4118-b3aa-9a8e61765d67",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "sliding_frame_max",
            "varType": 1
        },
        {
            "id": "52bf6314-b3a7-4db2-92f9-0a4bc3daf05f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sliding_frame_counter",
            "varType": 1
        },
        {
            "id": "468a89f4-19ee-4040-a3e4-2b6e517c021c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "invulnerability_frames_post_sliding",
            "varType": 1
        },
        {
            "id": "f0c46ebf-cf46-43b7-8535-aa7fa1470325",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "frames_to_ready_collection_on_kick",
            "varType": 1
        },
        {
            "id": "4d48d81e-5b79-44c2-a246-6d213d2d7366",
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
            "id": "2fbb900f-8500-43b8-b547-e750feff84ab",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "player_sliding_direction_x",
            "varType": 0
        },
        {
            "id": "1500bb90-e34a-4544-afa9-94a15bd6f9f9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "player_sliding_direction_y",
            "varType": 0
        },
        {
            "id": "74f2157c-c641-41ae-92c4-776d8bde1ae8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "player_damage_hitbox_id",
            "varType": 0
        },
        {
            "id": "04a3cd00-31cd-46d6-bd8f-61e4f2c773ba",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "player_collection_hitbox_id",
            "varType": 0
        },
        {
            "id": "69e31239-3dae-4f93-bd74-4d1bf3544cb7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "football_id",
            "varType": 0
        },
        {
            "id": "f39cb579-2d09-49ed-a489-c1a83ce19c54",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallUp",
            "varName": "sprite_ball_up",
            "varType": 5
        },
        {
            "id": "d63ceb08-a5b4-4246-ab24-c6b0b3258637",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallUpLeft",
            "varName": "sprite_ball_up_left",
            "varType": 5
        },
        {
            "id": "b8fcfa2a-5208-4bf3-b56d-b339c4a3a986",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallLeft",
            "varName": "sprite_ball_left",
            "varType": 5
        },
        {
            "id": "815e71ee-7b30-454b-9f30-595b25573906",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallDownLeft",
            "varName": "sprite_ball_down_left",
            "varType": 5
        },
        {
            "id": "9249dbba-3a4c-4f61-bbf7-c16e43a65fa0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallDown",
            "varName": "sprite_ball_down",
            "varType": 5
        },
        {
            "id": "11f3c788-daf1-4dbe-a0d4-59415b95dc8e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallDownRight",
            "varName": "sprite_ball_down_right",
            "varType": 5
        },
        {
            "id": "a82d3425-c866-4970-bec4-519245c9d9a1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallRight",
            "varName": "sprite_ball_right",
            "varType": 5
        },
        {
            "id": "3eebd499-3a97-4fbb-932d-b32a52f2b124",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteBallUpRight",
            "varName": "sprite_ball_up_right",
            "varType": 5
        },
        {
            "id": "f19e3b0a-8717-4221-aa26-6ca9deb1d66b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballUp",
            "varName": "sprite_noball_up",
            "varType": 5
        },
        {
            "id": "43e15d1a-e7fd-4dc8-838d-23f6251d14e1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballUpLeft",
            "varName": "sprite_noball_up_left",
            "varType": 5
        },
        {
            "id": "da481809-2d64-4b1a-9c06-2486e45f0d02",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballLeft",
            "varName": "sprite_noball_left",
            "varType": 5
        },
        {
            "id": "4e722e08-14d3-4622-903a-15e4bc29261f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballDownLeft",
            "varName": "sprite_noball_down_left",
            "varType": 5
        },
        {
            "id": "a37cacb4-ca31-4bac-bdd1-c4b6e6d635a0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballDown",
            "varName": "sprite_noball_down",
            "varType": 5
        },
        {
            "id": "fe3f1f4e-d648-4d1c-b340-1f92280d54c8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballDownRight",
            "varName": "sprite_noball_down_right",
            "varType": 5
        },
        {
            "id": "624ecf4e-101f-4c35-a8ef-23d5c584abf7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballRight",
            "varName": "sprite_noball_right",
            "varType": 5
        },
        {
            "id": "ffc40a00-0590-4b85-ac36-bb88bbf523d2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteNoballUpRight",
            "varName": "sprite_noball_up_right",
            "varType": 5
        },
        {
            "id": "cf045b7e-0d97-4382-8d52-81b3e2e4ec35",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "SpriteSlidingUp",
            "varName": "sprite_sliding_up",
            "varType": 5
        }
    ],
    "solid": false,
    "spriteId": "31ec50b2-a249-4e02-8138-799fed061bb2",
    "visible": true
}