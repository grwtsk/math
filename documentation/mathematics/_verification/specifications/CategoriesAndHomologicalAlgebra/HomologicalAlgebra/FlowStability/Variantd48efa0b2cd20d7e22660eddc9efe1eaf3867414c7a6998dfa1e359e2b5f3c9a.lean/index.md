# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.FlowStability.Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "190b2da2fecb97913e295f37a65fd289b3049b46",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `190b2da2fecb97913e295f37a65fd289b3049b46`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Homology.QuasiIsomorphism` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HomologyStabilityCertificate](../../../../../../CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean/declarations/homologystabilitycertificate--2cb65389730797c10303eff0.md) | 14 | `declaration-track:2cb65389730797c10303eff0de464a9110ad5214ecac5275ce401f1831df05d3` |
| 2 | `def` | [HomologyStabilityCertificate.claimSoundInput](../../../../../../CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean/declarations/homologystabilitycertificate-claimsoundinput--6df7beb66b2dd1c69e2d360a.md) | 28 | `declaration-track:6df7beb66b2dd1c69e2d360aa989445e7433dc9c3e1ce2ff03f80e25d013c2b6` |
| 3 | `theorem` | [HomologyStabilityCertificate.claimSound_id](../../../../../../CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean/declarations/homologystabilitycertificate-claimsound-id--4e9de0f9f3309152ce9909a7.md) | 32 | `result-track:4e9de0f9f3309152ce9909a77d72dff4fca0a652906e8a2d2861953205f0115e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad0349a6d9f1e4197938478e072cd165e34b7f51a60ca95d0a23fe306ecac5fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variantd48efa0b2cd20d7e22660eddc9efe1eaf3867414c7a6998dfa1e359e2b5f3c9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
