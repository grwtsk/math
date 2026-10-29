# Verification target: Periodic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b7413142eb0f41aa2730a0c4901fd0a71affa99",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b7413142eb0f41aa2730a0c4901fd0a71affa99`.

Source path: `GRWTSK/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Periodic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Periodic.const_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-const-smul.md) | 49 | `result-track:a44e7d524568ad683b271d561b6e8d821a939f214c71e9393cc10632fe52db66` |
| 2 | `theorem` | [Periodic.const_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-const-mul.md) | 55 | `result-track:31648a29fe5e1e036582f395ca5a8911103766ff4c49290f62b2025db3b5b933` |
| 3 | `theorem` | [Periodic.const_inv_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-const-inv-smul.md) | 59 | `result-track:33217fe4b9498bbf5591fd286e67e642e234ab0b361a8591b3046b71c93f1a87` |
| 4 | `theorem` | [Periodic.const_inv_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-const-inv-mul.md) | 63 | `result-track:ed1bf0a85f8c537b36923d8156ea406fca638aa2232373527773d216973f67e8` |
| 5 | `theorem` | [Periodic.mul_const](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-mul-const-source-edition-2.md) | 67 | `result-track:d2a4625e33c8eadbcc3d806b58f08fddfe6f2e663a2302d6a93d90690119a125` |
| 6 | `theorem` | [Periodic.mul_const'](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-mul-const.md) | 71 | `result-track:af6f1520e25c8aaaa40c2e7b51f6ef6a02bcd23b88a16dc83f75d9853861d17f` |
| 7 | `theorem` | [Periodic.mul_const_inv](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-mul-const-inv.md) | 74 | `result-track:bfff3673340c81e5012d48aac4cf026b9ccba86684707398a18d1f4e43b9684d` |
| 8 | `theorem` | [Periodic.div_const](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-div-const.md) | 78 | `result-track:169a8ff8d5f465d575a7f4eab35262a6697ee550e566f4a20630c7245e7e6251` |
| 9 | `theorem` | [Periodic.exists_mem_Ico₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-exists-mem-ico.md) | 83 | `result-track:069e2b1c41c4aa13c8272cfcab0f7d21911634ac7eb85b5eb4898af1975a1d75` |
| 10 | `theorem` | [Periodic.exists_mem_Ico](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-exists-mem-ico-source-edition-2.md) | 91 | `result-track:2f7f752891de1d0e72a400448883ed9fafaf33d5064d85bd49a8c63c4fcddda5` |
| 11 | `theorem` | [Periodic.exists_mem_Ioc](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-exists-mem-ioc.md) | 99 | `result-track:1b01266b3327e15d4729f328d5ddce9793cdc87d7da84f8237f1f2feda03e9a8` |
| 12 | `theorem` | [Periodic.image_Ioc](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-image-ioc.md) | 105 | `result-track:addab13400304f476c2b4f67254a6367f464e97466c9d6d6134f96b08ed12e93` |
| 13 | `theorem` | [Periodic.image_Icc](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-image-icc.md) | 112 | `result-track:085e9e7b09705b37c5b660639a83f7facfd20c88d86a325a36f7b27b66c56530` |
| 14 | `theorem` | [Periodic.image_uIcc](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/periodic-image-uicc.md) | 117 | `result-track:99f1d9595e9f48c2a4a1316b6713e7abe101659a66056f8534197c67066364f8` |
| 15 | `theorem` | [Antiperiodic.add_nat_mul_eq](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-add-nat-mul-eq.md) | 128 | `result-track:51942fd2575f31684d750b7ee87a45466ae03f4578c013351fb10153268a5903` |
| 16 | `theorem` | [Antiperiodic.sub_nat_mul_eq](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-sub-nat-mul-eq.md) | 133 | `result-track:3ecac61c095168f4317cfc52918492c04322cf498980f1b432ae9d4bd756318a` |
| 17 | `theorem` | [Antiperiodic.nat_mul_sub_eq](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-nat-mul-sub-eq.md) | 138 | `result-track:f2094d397cd1ea8473dab6db364da1850798e50ed83680d6c58d876892c49e98` |
| 18 | `theorem` | [Antiperiodic.const_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-const-smul.md) | 143 | `result-track:622b6476879e5ec50980f9fd2651213f22b6177b2c87960b07ec588debec5644` |
| 19 | `theorem` | [Antiperiodic.const_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-const-mul.md) | 147 | `result-track:311420f7cc191181e6f0b337be1dfc632f27e515bb7956c7373a2ced00eac7ac` |
| 20 | `theorem` | [Antiperiodic.const_inv_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-const-inv-smul.md) | 151 | `result-track:48f6547267ecb391e0e70b0dc44e64dcf5fc5eeb66b6462e685c985660cafb50` |
| 21 | `theorem` | [Antiperiodic.const_inv_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-const-inv-mul.md) | 155 | `result-track:40bb42d009ceebdc86a28d969c14943d36a0ba351447ab7baeb0c87d3e41412a` |
| 22 | `theorem` | [Antiperiodic.mul_const](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-mul-const.md) | 159 | `result-track:9b9fb1290a86b4930d39455fe99eaa1d7dcb1556d9f6e6a203bc0c98444f6866` |
| 23 | `theorem` | [Antiperiodic.mul_const'](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-mul-const-source-edition-2.md) | 163 | `result-track:c81dbb8dffe2b2ec7f9845997b4cf9a1f2a68880d6c4bcd43d499e12212f7f1e` |
| 24 | `theorem` | [Antiperiodic.mul_const_inv](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-mul-const-inv.md) | 167 | `result-track:ccf05606c56befd994a0cc84588ea3b4ca651bd32ca64b346076bdac8a6b9a14` |
| 25 | `theorem` | [Antiperiodic.div_inv](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/antiperiodic-div-inv.md) | 171 | `result-track:6ea5060ab82393af2f91f2dc6b5efffa4fb47fbd572c9a486de9a6c10e10c504` |
| 26 | `theorem` | [Int.fract_periodic](../../../../FieldTheoryAndPolynomials/PeriodicNamespaced.lean/declarations/int-fract-periodic.md) | 177 | `result-track:6a0d4ec83cb60eac848a9818443e772245665d61c3fd7365cae205916134f7aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff3203978451be69083dfb685fe585019654c1e0c9124ead67ff2b6ce81723ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean","GRWTSK/_verification/specifications/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
