# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f45137bcc600cb0976cbd30abe4bd5b806c3ee2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f45137bcc600cb0976cbd30abe4bd5b806c3ee2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [const](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/const--cf99c902094cf6c4118fef03.md) | 44 | `declaration-track:cf99c902094cf6c4118fef031e8cc191c25933ec6b847572c422cd70a9e108a1` |
| 2 | `def` | [opObjOp](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/opobjop--49fe809223df4eed5495fdb1.md) | 62 | `declaration-track:49fe809223df4eed5495fdb146be2f0f58399866c63d61066c0b2afa52e1a2c2` |
| 3 | `def` | [opObjUnop](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/opobjunop--1bbc3a7bd5de518029162ce0.md) | 72 | `declaration-track:1bbc3a7bd5de518029162ce0c11acff9df7d0308793e3c081bea453033e0497a` |
| 4 | `theorem` | [opObjUnop_hom_app](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/opobjunop-hom-app--1499c0d733c9b7222ecbfca0.md) | 80 | `result-track:1499c0d733c9b7222ecbfca0a5aab28fe19499684b4064cc20cecb26aa4967a7` |
| 5 | `theorem` | [opObjUnop_inv_app](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/opobjunop-inv-app--80b1f7e40f2b2daed4ab695c.md) | 85 | `result-track:80b1f7e40f2b2daed4ab695c4e8813e615e06b433e19ecc6e6ce244013299ea4` |
| 6 | `theorem` | [unop_functor_op_obj_map](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/unop-functor-op-obj-map--3f3454aa908a102a69fc54d1.md) | 90 | `result-track:3f3454aa908a102a69fc54d17766acb421ef2aee6e9e4e8ec358dabdd1b88957` |
| 7 | `def` | [constComp](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/constcomp--a0fa21847a061fb678d540a4.md) | 105 | `declaration-track:a0fa21847a061fb678d540a41ca95d374a02e4a111fbf88829c1552e03602b6f` |
| 8 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean/declarations/instance--9a07eb2cd1c9aca7e7dcd3eb.md) | 112 | `declaration-track:9a07eb2cd1c9aca7e7dcd3ebca28d708892aa7abf445a8bd2fc8971475dfde14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce7fae7130cbaa47492bb3c4211737b680392cc96be11d38281e2ed6b0c31fc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant393823cb6667d36295a2b92d54da47e3d6242ba339a2a7f53804fe4c16da2a60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
