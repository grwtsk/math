namespace GatewayProof
namespace Config

inductive TopologyMode
| local
| dev
| prod
deriving Repr, DecidableEq

inductive UpstreamMode
| direct
| reverseLink
deriving Repr, DecidableEq

inductive ConfigRefusal
| invalidTopologyMode
| invalidUpstreamMode
| envAliasConflict
| prodDirectMissingDaemonBaseUrl
| reverseLinkTokenMissing
| reverseLinkBindCollision
| mcpIngressRequiresReverseLinkMode
| tlsRequiresReverseLinkMode
deriving Repr, DecidableEq

structure RuntimeConfigModel where
  topology : TopologyMode
  upstream : UpstreamMode
  gatewayEnabled : Bool
  daemonBaseUrlConfigured : Bool
  reverseLinkTokenConfigured : Bool
  gatewayBind : String
  reverseLinkBind : String
  mcpIngressEnabled : Bool
  controlPublicHostConfigured : Bool
  tlsEnabled : Bool
  tlsCertConfigured : Bool
  tlsKeyConfigured : Bool
deriving Repr, DecidableEq

def prodDirectMissingDaemonBaseUrl (c : RuntimeConfigModel) : Prop :=
  c.topology = TopologyMode.prod ∧
  c.upstream = UpstreamMode.direct ∧
  c.daemonBaseUrlConfigured = false

def reverseLinkTokenMissing (c : RuntimeConfigModel) : Prop :=
  c.upstream = UpstreamMode.reverseLink ∧
  c.reverseLinkTokenConfigured = false

def reverseLinkBindCollision (c : RuntimeConfigModel) : Prop :=
  c.upstream = UpstreamMode.reverseLink ∧
  c.gatewayBind = c.reverseLinkBind

def mcpIngressModeInvalid (c : RuntimeConfigModel) : Prop :=
  c.mcpIngressEnabled = true ∧ c.upstream ≠ UpstreamMode.reverseLink

def tlsModeInvalid (c : RuntimeConfigModel) : Prop :=
  c.tlsEnabled = true ∧ c.upstream ≠ UpstreamMode.reverseLink

def validated (c : RuntimeConfigModel) : Prop :=
  ¬ prodDirectMissingDaemonBaseUrl c ∧
  ¬ reverseLinkTokenMissing c ∧
  ¬ reverseLinkBindCollision c ∧
  ¬ mcpIngressModeInvalid c ∧
  ¬ tlsModeInvalid c

theorem prod_direct_without_daemon_not_valid
    (c : RuntimeConfigModel)
    (h : prodDirectMissingDaemonBaseUrl c) :
    ¬ validated c := by
  intro hv
  exact hv.1 h

theorem reverse_link_without_token_not_valid
    (c : RuntimeConfigModel)
    (h : reverseLinkTokenMissing c) :
    ¬ validated c := by
  intro hv
  exact hv.2.1 h

theorem mcp_ingress_requires_reverse_link
    (c : RuntimeConfigModel)
    (h : mcpIngressModeInvalid c) :
    ¬ validated c := by
  intro hv
  exact hv.2.2.2.1 h

end Config
end GatewayProof
