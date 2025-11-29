{
  "sources": {
    "github": [
      {
        "id": "gh-alpha",
        "hint": "primary repo snapshot",
        "profile": "v1/channel-alpha"
      },
      {
        "id": "gh-beta",
        "hint": "fallback mirror profile",
        "profile": "v1/channel-beta"
      },
      {
        "id": "gh-gamma",
        "hint": "redundant failover node",
        "profile": "v1/channel-gamma"
      }
    ],
    "firebase": {
      "id": "fb-core",
      "hint": "remote sync document",
      "path": "/registry/config/v2"
    },
    "providers": [
      {
        "id": "p1",
        "type": "cdn",
        "hint": "static fallback", 
        "endpoint": "snapshot/edge/v1"
      },
      {
        "id": "p2",
        "type": "mirror",
        "hint": "periodic refresh node",
        "endpoint": "mirror/core/v3"
      }
    ]
  },
  "metadata": {
    "version": 3,
    "updated_at": "auto",
    "priority": ["firebase", "github", "providers"]
  }
}
