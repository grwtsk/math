# Verification target: GRWTSK.Topology.GeneralTopology.Regularity.Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8d7ff78e7290596656e63f6b9128fee2d9d87f8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8d7ff78e7290596656e63f6b9128fee2d9d87f8`.

Source path: `GRWTSK/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GammaBridge.Exact` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RegularityRequest](../../../../../mathematics/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/declarations/regularityrequest--f10e3386c509c71980269f69.md) | 7 | `declaration-track:f10e3386c509c71980269f693ec923f867c48e4b48241adfbadbe59ed532f403` |
| 2 | `inductive` | [RegularityStatus](../../../../../mathematics/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/declarations/regularitystatus--4f74806f9ac7b72ea95d2091.md) | 13 | `declaration-track:4f74806f9ac7b72ea95d20910d79c33a148a862981d6eca5d61bc72f3366e6dd` |
| 3 | `structure` | [RegularityCertificate](../../../../../mathematics/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/declarations/regularitycertificate--a63de6e998f036a578283d69.md) | 20 | `declaration-track:a63de6e998f036a578283d693291031e2b36b0c1e75a06c0d24f4633945f4992` |
| 4 | `def` | [RegularityCertificate.Valid](../../../../../mathematics/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/declarations/regularitycertificate-valid--19363c6472f217cd2b8cf2fd.md) | 26 | `declaration-track:19363c6472f217cd2b8cf2fd4d7117c437d29bd49025cda689267b6b7961c84e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
