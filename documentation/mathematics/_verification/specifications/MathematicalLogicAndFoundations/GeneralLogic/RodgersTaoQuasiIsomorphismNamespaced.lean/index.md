# Verification target: Rodgers Tao Quasi Isomorphism Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8c21449759032b20479cfb562191e48f184064",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoQuasiIsomorphism/Variant5f902ec4f0d892474dca551d57d9bad8159da49e7cda813bf5c9ea6fd9f3cbd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8c21449759032b20479cfb562191e48f184064`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoQuasiIsomorphism/Variant5f902ec4f0d892474dca551d57d9bad8159da49e7cda813bf5c9ea6fd9f3cbd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoQuasiIsomorphism/Variant5f902ec4f0d892474dca551d57d9bad8159da49e7cda813bf5c9ea6fd9f3cbd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.DerivedObject` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.RodgersTaoEulerTransport` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.ResearchTopos.RodgersTaoHeat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RodgersTaoQuasiIsomorphism](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/declarations/rodgerstaoquasiisomorphism.md) | 36 | `declaration-track:d8286177067c29c26ea9270a5985b3e50258b7cc20cf754c53e447eb4d6501c2` |
| 2 | `theorem` | [rodgers_tao_flow_is_quasi_isomorphism](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/declarations/rodgers-tao-flow-is-quasi-isomorphism.md) | 49 | `result-track:370d6ade590ac037464fe0ad714562b414090947319eb61d44e14fe31b069175` |
| 3 | `theorem` | [rodgers_tao_flow_has_quasi_isomorphism](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/declarations/rodgers-tao-flow-has-quasi-isomorphism.md) | 57 | `result-track:5d361b9b0829535ba77883332297b93376243fb062dfc1a77fbdd69ef960a339` |
| 4 | `theorem` | [rodgers_tao_flow_realizes_quasi_iso](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/declarations/rodgers-tao-flow-realizes-quasi-iso.md) | 66 | `result-track:7014e8235995070631bbfca2fa51b5aa43256e6a6d6403589ea1a813adda8c40` |
| 5 | `structure` | [RodgersTaoIndexTransport](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/declarations/rodgerstaoindextransport.md) | 75 | `declaration-track:61ba4eaa46aee9c6a5e6784af9ac5ca4296a9a500596c5128f97a5bff3d53b99` |
| 6 | `theorem` | [rodgers_tao_index_transport_quasi_iso](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/declarations/rodgers-tao-index-transport-quasi-iso.md) | 79 | `result-track:9d690afdff52860ac94c9f6c0b6dbba0a91caf955ef55d703477a325137a4e76` |
| 7 | `theorem` | [rodgers_tao_index_transport_preserves_euler](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RodgersTaoQuasiIsomorphismNamespaced.lean/declarations/rodgers-tao-index-transport-preserves-euler.md) | 84 | `result-track:12681c27293dcce8969a26bfa64e86975250a8e34c959e691be5e18a8db0fb3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be0316a7f2bddec4f551df8302d01a353913bc44c87f0f948fbe33f931388ea0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoQuasiIsomorphism/Variant5f902ec4f0d892474dca551d57d9bad8159da49e7cda813bf5c9ea6fd9f3cbd1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoQuasiIsomorphism/Variant5f902ec4f0d892474dca551d57d9bad8159da49e7cda813bf5c9ea6fd9f3cbd1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
