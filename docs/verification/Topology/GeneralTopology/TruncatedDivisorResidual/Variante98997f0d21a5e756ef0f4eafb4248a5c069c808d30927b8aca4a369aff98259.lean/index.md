# Verification target: GRWTSK.Topology.GeneralTopology.TruncatedDivisorResidual.Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b9b1f105ede2de6b1f4f405586b36c52ec9b3bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b9b1f105ede2de6b1f4f405586b36c52ec9b3bb`.

Source path: `GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncatedDivisorCoefficient](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/declarations/truncateddivisorcoefficient--3f124b61c9af3bed25ac5365.md) | 14 | `declaration-track:3f124b61c9af3bed25ac53655dc78f35cfeb8067d22def1986aaec338c7ba7d8` |
| 2 | `theorem` | [truncatedDivisorCoefficient_eq_full](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/declarations/truncateddivisorcoefficient-eq-full--332a08a8513560f0b62dca71.md) | 19 | `result-track:332a08a8513560f0b62dca71d7e96081cc599578f429807f961033187cfb5700` |
| 3 | `theorem` | [finite_floor_prefix](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/declarations/finite-floor-prefix--91f5ee518af7ac0de8ca995b.md) | 27 | `result-track:91f5ee518af7ac0de8ca995b119f3328193a5c242b9ae624aa482dcdd8b956be` |
| 4 | `theorem` | [damped_floor_eq_truncated_prefix](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/declarations/damped-floor-eq-truncated-prefix--038b52488d8353c6f40325b4.md) | 56 | `result-track:038b52488d8353c6f40325b4a9fbfc366756f8af6160dba1632937b819dc8d46` |
| 5 | `theorem` | [residual_floor](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/declarations/residual-floor--a7d47d66c14e33b21c9dd2ff.md) | 66 | `result-track:a7d47d66c14e33b21c9dd2ff5067a53270b52914c1035810af3352108b5d71a6` |
| 6 | `theorem` | [arithmeticResidual_eq_truncated_prefix](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variante98997f0d21a5e756ef0f4eafb4248a5c069c808d30927b8aca4a369aff98259.lean/declarations/arithmeticresidual-eq-truncated-prefix--84047bd4323ac466fb225785.md) | 84 | `result-track:84047bd4323ac466fb2257859f16a7291f5971e7c22e71528aa6e37ba94bfadf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
