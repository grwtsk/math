# Verification target: ULift Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0953094043fd99fd7be1a6bf08581332b16c3e39",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ULiftNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ULiftNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0953094043fd99fd7be1a6bf08581332b16c3e39`.

Source path: `GRWTSK/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftFunctor](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/uliftfunctor.md) | 36 | `declaration-track:1fb7e243c6b2b3b7278bad5787020b1b37cf9bc3ba390afbdb9f8c964a38cc9c` |
| 2 | `def` | [uliftFunctorObjHomeo](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/uliftfunctorobjhomeo.md) | 41 | `declaration-track:765ee4725e724f433246e0e6616ed26c263be0fb7e18889c72f6d6ec24dfdac2` |
| 3 | `lemma` | [uliftFunctorObjHomeo_naturality_apply](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/uliftfunctorobjhomeo-naturality-apply.md) | 45 | `result-track:d18a0cbed9f2a9c8e190cfea06a27528977e1dc68158dc508284e3b998e69e93` |
| 4 | `lemma` | [uliftFunctorObjHomeo_symm_naturality_apply](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/uliftfunctorobjhomeo-symm-naturality-apply.md) | 50 | `result-track:2e271b2f3e2d76b91b9c03d561b457d580bf6541ae484b44c481d0515e62cc4e` |
| 5 | `def` | [uliftFunctorCompForgetIso](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/uliftfunctorcompforgetiso.md) | 59 | `declaration-track:25ff705051af0e6c8e13325200c8c95a6c6d83d436d04942a0e1f4524f43998f` |
| 6 | `def` | [uliftFunctorFullyFaithful](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/uliftfunctorfullyfaithful.md) | 63 | `declaration-track:046f4268cd357463ceadb01c700ee4db89ac8c21d5ffa4e692ce7818d0ad9a4a` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/instance.md) | 66 | `declaration-track:9214ec2af180608ff3137d25d3a7755c8cf9fd79b3f3813d381a8d16ca226327` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/ULiftNamespaced.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:c289b77a6e09f05dd13209a170bef5d78b32599b28e4bed5542b0f38937bd3ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d00f2c7a3689e174f1844bddc5626244dd3b0a991f6f6ba3739f8af3258693e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
