# Verification target: Module Hom Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a31ffb39b6a357e3524dccd55ce06085193ac6a8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant809f5bbd11f4c3830103c55f676e8b85e749e827b20f1c16f1426fa606b96130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a31ffb39b6a357e3524dccd55ce06085193ac6a8`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant809f5bbd11f4c3830103c55f676e8b85e749e827b20f1c16f1426fa606b96130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant809f5bbd11f4c3830103c55f676e8b85e749e827b20f1c16f1426fa606b96130.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistribSMul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/instdistribsmul-source-edition-2.md) | 40 | `declaration-track:2c9cd25385db9bb25f506fd2f378a7d2f62b9a89dfc50c45b90e0913d26630cc` |
| 2 | `instance` | [instDistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/instdistribmulaction.md) | 47 | `declaration-track:1edeecefefb2a0a0e51b7afdb6cdba22985118a99fb5cc004d205ff917a02c69` |
| 3 | `theorem` | [coe_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/coe-smul-source-edition-3.md) | 53 | `result-track:caac2187d7cef5c3971ce0708c96bc075e4d60caf8dd5fcc47d32affd6bae0f2` |
| 4 | `theorem` | [smul_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/smul-apply-source-edition-2.md) | 55 | `result-track:e4748a8f63fb55cbf921c508ea13d76924d6eaf84b9e849502db1d1995366629` |
| 5 | `instance` | [smulCommClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/smulcommclass-source-edition-2.md) | 58 | `declaration-track:ed54804fcc04c148aa7521afa0f496bbc9c482355bbe3d4edb99e119f4f2bee5` |
| 6 | `instance` | [isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/isscalartower.md) | 61 | `declaration-track:5f77abef696d70707d4605f912b48e09517b45e1c346f6ea4b78f82d0be49d0b` |
| 7 | `instance` | [isCentralScalar](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/iscentralscalar.md) | 64 | `declaration-track:95f5e1d4efa3c0a9a0b97c250a4dead545a1d5cb9d47690d71807c11ccd8c8b6` |
| 8 | `instance` | [instModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/instmodule.md) | 70 | `declaration-track:467bdcf1ddcd683ae6da23cc813fe07c2e9814fa84d2c1dd5a97712e978fb4a8` |
| 9 | `instance` | [instDomMulActModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/instdommulactmodule.md) | 74 | `declaration-track:50f70d95631470204e8f7bbc4c8f7c09f5920c4005e643ee33744ed30cb581ed` |
| 10 | `instance` | [instDistribSMul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/instdistribsmul.md) | 98 | `declaration-track:0ba737109d7a105510e02e15e505faa9ef50c16d4696f652e702a4818b91f406` |
| 11 | `instance` | [instDistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/instdistribmulaction-source-edition-2.md) | 103 | `declaration-track:4added9b33fe5e5628040e3890f4ca7e010946a96e59f286d5913de0cddff124` |
| 12 | `theorem` | [coe_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/coe-smul-source-edition-2.md) | 106 | `result-track:bdca32a1c77cf099c6227e30863a9d520af83ef7ef09d005aee5602bdfd2589d` |
| 13 | `theorem` | [smul_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/smul-apply.md) | 108 | `result-track:9d7c2158adba0343e2f178f0ca6b9bb2804ae5ea95245fa11181c6713f6fd034` |
| 14 | `instance` | [smulCommClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/smulcommclass.md) | 111 | `declaration-track:7ed89510b2bdce3a42a9a7c44db7e83a7891034528f4009bbf938c242625f06b` |
| 15 | `instance` | [isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/isscalartower-source-edition-2.md) | 114 | `declaration-track:a52e89885635d4170daac93fbdb7e06e4184c1c330c5066ff1c1df577065b166` |
| 16 | `instance` | [isCentralScalar](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/iscentralscalar-source-edition-2.md) | 117 | `declaration-track:a8d09a4751ffe6cebe0964c9b22d785d777fec1c710aca28abc1b3ec43688413` |
| 17 | `instance` | [instModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/instmodule-source-edition-2.md) | 123 | `declaration-track:98100256befce26f5e8ac9cec93e6ac2e0cb03052ad0f502d75c706714070e99` |
| 18 | `instance` | [applyModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/applymodule.md) | 129 | `declaration-track:710127efce303a0cf398f81f4c7e6714c5ff92b4a4649b68b0fff40a6b4a6aab` |
| 19 | `def` | [smulLeft](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/smulleft.md) | 141 | `declaration-track:3cbe9d6a39928c2326e2ee8740ed7f4f5b345699e1be8e7983438e60f95a28b8` |
| 20 | `def` | [smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/smul.md) | 146 | `declaration-track:3d0706ce253ec077da06760e57d92cdebade16ee0fa4aa2c318a3d48866fda5c` |
| 21 | `theorem` | [coe_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleHomNamespaced.lean/declarations/coe-smul.md) | 149 | `result-track:433553206aa5b2327e72554d5ee7c4a627c41bd18de93a6be0f1c477c71eacfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f450054caea976efb171863401b9bc0aa09284459fc6038c1966a9545333cb33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Hom/Variant809f5bbd11f4c3830103c55f676e8b85e749e827b20f1c16f1426fa606b96130.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Hom/Variant809f5bbd11f4c3830103c55f676e8b85e749e827b20f1c16f1426fa606b96130.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
