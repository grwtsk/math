# Verification target: Field Rat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01710b58df4d22bb2dd1432b6e3183015b541745",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Variant839f89f9d5d2daea9e6e07a99e48e7b8d0b20d55dbe2f974a58a386498cf2580.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldRat.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldRat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01710b58df4d22bb2dd1432b6e3183015b541745`.

Source path: `GRWTSK/Algebra/Rat/Variant839f89f9d5d2daea9e6e07a99e48e7b8d0b20d55dbe2f974a58a386498cf2580.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Variant839f89f9d5d2daea9e6e07a99e48e7b8d0b20d55dbe2f974a58a386498cf2580.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instField](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/instfield.md) | 23 | `declaration-track:b328321bc35f9300484991ab70e6c8adea79eb86f1cc72ebffff2db9fbb8e1d4` |
| 2 | `instance` | [instDivisionRing](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/instdivisionring.md) | 40 | `declaration-track:c1dfec8cd6463c56b203937701c3523a3b0433f4648fc3604c7f6feeb133a76d` |
| 3 | `lemma` | [inv_nonneg](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/inv-nonneg.md) | 42 | `result-track:d316c3f05176ce0ef54dd5511f10ff95ba614d79a53aae60b74ec0fc11b4ca0b` |
| 4 | `lemma` | [div_nonneg](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/div-nonneg.md) | 46 | `result-track:42f4b2c9a6fc6c278099841600664502cb2cde4a33ca52272edb07ff46be53a7` |
| 5 | `lemma` | [zpow_nonneg](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/zpow-nonneg.md) | 49 | `result-track:54348e67fbe195015a3872cc2091c0e8372408503d4b1b7719b3dc92e23d7664` |
| 6 | `instance` | [instInv](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/instinv.md) | 57 | `declaration-track:ebfe66d420b623bc1b57eea34afed2b1ea04d7382ca2cd33def93000c21a2f29` |
| 7 | `instance` | [instDiv](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/instdiv.md) | 60 | `declaration-track:3bba3e87973291ef6b9227539818f5358e6b83324cae1a4055302e1313720f6f` |
| 8 | `instance` | [instZPow](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/instzpow.md) | 63 | `declaration-track:8a32ef89706df596b6aec0b018c0939ea9c5f9efdc71236121cd37f31132be14` |
| 9 | `lemma` | [coe_inv](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/coe-inv.md) | 66 | `result-track:86952cc3818bac3209582e34cced65f070d225f633e188019d565a2af632eb98` |
| 10 | `lemma` | [coe_div](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/coe-div.md) | 67 | `result-track:596f53b6dcb0f206bbe3b5e7c643173e020b1702b7ecd154fb422cbfc4dd6aa6` |
| 11 | `lemma` | [coe_zpow](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/coe-zpow.md) | 68 | `result-track:618250b96787f9f95ec510d6e4ffe2ae4b19b7eb9d0b860c79207c0be38695e3` |
| 12 | `lemma` | [inv_def](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/inv-def.md) | 70 | `result-track:d1fd40def8c5b3f74f6d52e945a86abc70a145b03a095b79fb7f8072f48d0e29` |
| 13 | `lemma` | [div_def](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/div-def.md) | 71 | `result-track:75ec00f0ed71924d6e958c7be097b047ec0e5767c349ff95ae0491c34059a8bb` |
| 14 | `lemma` | [num_inv_of_ne_zero](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/num-inv-of-ne-zero.md) | 74 | `result-track:0aaef198fd8461ec6b47957693c7366885b1a392f36f7c267be9d463dab64f07` |
| 15 | `lemma` | [den_inv_of_ne_zero](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/den-inv-of-ne-zero.md) | 79 | `result-track:a00d0c64dba771539bdf41325dd0c001a11b02c1ee07ca7211b436b6c8c8d609` |
| 16 | `lemma` | [num_div_den](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/num-div-den.md) | 84 | `result-track:22b13f0234ccc2c35b7996eef41eab97267b490ef712078e85a722b96298bb00` |
| 17 | `instance` | [instSemifield](../../../../FieldTheoryAndPolynomials/FieldRat.lean/declarations/instsemifield.md) | 89 | `declaration-track:496cb07419a9ff6801b6ac61e92c433a2eff588ea6837dafd32cd9d8a552a758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d42ad8980468c913b63511adaa83894aedc6b24430f07745b81b893d9dbb98a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Rat/Variant839f89f9d5d2daea9e6e07a99e48e7b8d0b20d55dbe2f974a58a386498cf2580.lean","GRWTSK/_verification/specifications/Algebra/Rat/Variant839f89f9d5d2daea9e6e07a99e48e7b8d0b20d55dbe2f974a58a386498cf2580.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
