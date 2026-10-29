# Verification target: Valuation Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79628f7d71a23c0aba71315ae6595a70fc14d5df",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Extension/Variant1480d1dab913a8b76e27aeff1c295d9dc34970b72fe4b9c3bba485e6c01fe953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79628f7d71a23c0aba71315ae6595a70fc14d5df`.

Source path: `GRWTSK/Algebra/Extension/Variant1480d1dab913a8b76e27aeff1c295d9dc34970b72fe4b9c3bba485e6c01fe953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Extension/Variant1480d1dab913a8b76e27aeff1c295d9dc34970b72fe4b9c3bba485e6c01fe953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasExtension](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/hasextension.md) | 67 | `declaration-track:5111541522faf476d68c5722fe984437cc6453e8a4b10db1833eda69424a5429` |
| 2 | `theorem` | [val_map_le_iff](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-map-le-iff.md) | 80 | `result-track:fd05aef68f8cf2b1c615760e72ebc15c34edc70812231e25b4439a6168e02914` |
| 3 | `theorem` | [val_map_lt_iff](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-map-lt-iff.md) | 83 | `result-track:cec0d0f5b3032b8bdbc4dee8a632c120fe1096a385b9fbc6030ac2ad7df0e4fa` |
| 4 | `theorem` | [val_map_eq_iff](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-map-eq-iff.md) | 86 | `result-track:bc0521c4e021d40a6223ce285bbee24f8c56c486f54a0193cdc50cfd080e7a49` |
| 5 | `theorem` | [val_map_le_one_iff](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-map-le-one-iff.md) | 89 | `result-track:9cd5523c70f9537584d42aabed04a920f9fa06138063541c49b2bcd4b6f47d5e` |
| 6 | `theorem` | [val_map_lt_one_iff](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-map-lt-one-iff.md) | 92 | `result-track:431fd5e70d7bea84fb7dec5a288e7e1bb83b219d103f9194adba05ae048c5f47` |
| 7 | `theorem` | [val_map_eq_one_iff](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-map-eq-one-iff.md) | 95 | `result-track:18d14022198a563288c5ceb14394c6224600e241542b32574c055cc4f527e0d8` |
| 8 | `instance` | [id](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/id.md) | 101 | `declaration-track:7104876ec2c5302777ddee9ac33db065c6374696bc23d83b3969581025697b23` |
| 9 | `theorem` | [ofComapInteger](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/ofcomapinteger.md) | 116 | `result-track:5cdc63448358ed7dd0eb16f22c2c59b08ec846d78fd9fc23b908c61bdceb7271` |
| 10 | `instance` | [instAlgebraInteger](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/instalgebrainteger.md) | 123 | `declaration-track:64633dcfb09d5d6b3b229a4aedd7523b8db76df139ddc0a6af9b08733af62002` |
| 11 | `theorem` | [val_smul](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-smul.md) | 132 | `result-track:0c396e7a0752404dc571dc222a46b1c929a32dcee51e0ba8e2d33cd1e751ceca` |
| 12 | `theorem` | [val_algebraMap](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/val-algebramap.md) | 136 | `result-track:467668b1c71c0ca9288bd24464f2500661a740939fa14a25be8d61dd38bf43d1` |
| 13 | `instance` | [instIsScalarTowerInteger](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/instisscalartowerinteger.md) | 140 | `declaration-track:0f9f0e5fc3e263b7085b515157bcb5da8b7e7b523bb5330e5433ecf06ceda759` |
| 14 | `instance` | [instNoZeroSMulDivisorsInteger](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/instnozerosmuldivisorsinteger.md) | 145 | `declaration-track:b48713d38b238e09d90c61257309b60882129c6f678bbe3dde5a74d393fb28bf` |
| 15 | `theorem` | [algebraMap_injective](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/algebramap-injective.md) | 151 | `result-track:65306afaf3de659bc69f7753bc036c6ff71d58eb7daaae2299acba25da9bd534` |
| 16 | `theorem` | [instIsLocalHomValuationInteger](../../../../CommutativeAlgebra/ValuationExtensionNamespaced.lean/declarations/instislocalhomvaluationinteger.md) | 159 | `result-track:9488aa2144a81abc31fb17ad88cbe84642bebf08dc48b87688a7dc4415e58b20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2c731bce048f9e34aeffababaeb78732a2c4c0290b0a44e30664bab5c45dc1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Extension/Variant1480d1dab913a8b76e27aeff1c295d9dc34970b72fe4b9c3bba485e6c01fe953.lean","GRWTSK/_verification/specifications/Algebra/Extension/Variant1480d1dab913a8b76e27aeff1c295d9dc34970b72fe4b9c3bba485e6c01fe953.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
