# Verification target: Galois Field Splits XPow Card Sub X

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/index.md) · [Full source](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5`.

Source path: `GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.IsSplittingField` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [FiniteField.isSplittingField_sub](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/finitefield-issplittingfield-sub.md) | 41 | `declaration-track:780ac6096af6073818ac0e4f0e3ef023e2ee2e871c9028f7b2405e4076881558` |
| 2 | `theorem` | [galois_poly_separable](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/galois-poly-separable.md) | 55 | `result-track:21352c166ec822dca7b406c8e14f8870336ae62bf3ac3c82457fe0a0ed654421` |
| 3 | `def` | [GaloisField](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/galoisfield.md) | 68 | `declaration-track:88154c0012e128cc7c02ae82a6f19130b7d7d66e68306b44fe935e7ef6d5aba1` |
| 4 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance.md) | 72 | `declaration-track:17987cf948ae64006c178c009e203d013e1c2df1c6ed6f8adc48e44f9d465410` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:8ae4d02e8265cba14a8e8c77627a0d118d1cc0abcabe1e19fbae91bb42f4d55a` |
| 6 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:55845b0adcd4dd674ec4eb120066b46c3daf1292ad3021d637f5940403ddf34f` |
| 7 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance-source-edition-3.md) | 83 | `declaration-track:588fa9c3a60e19be9baf770ff6bd93acfa5a9deefede2a52088f53a23174647f` |
| 8 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance-source-edition-8.md) | 86 | `declaration-track:e1f42f23ef4146c8e4141888abd161d309aab8d6e7f08afc99181be8e205e301` |
| 9 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance-source-edition-7.md) | 89 | `declaration-track:af485e40f489ec0cfef616c06a031295b5ba2210a8fd30ba561737819a359b08` |
| 10 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance-source-edition-5.md) | 92 | `declaration-track:9e9072d7a8c471747bfa752592f720573f2475bdefedd6c61246307599cc9a13` |
| 11 | `theorem` | [finrank](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/finrank.md) | 96 | `result-track:4d86d785ccb47db0e5bc87474c481371623686e7751f55f41555a58c1565c40b` |
| 12 | `theorem` | [card](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/card.md) | 146 | `result-track:bbc72acf291bd489e7c734577b94b5fc310cb155691ba56df56dbfe681b22b43` |
| 13 | `theorem` | [splits_zmod_X_pow_sub_X](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/splits-zmod-x-pow-sub-x.md) | 151 | `result-track:ef0fd1e09838b70738739690119fab447b4cc1fa08d0478ebfe7c2a68f3e6b7c` |
| 14 | `def` | [equivZmodP](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/equivzmodp.md) | 164 | `declaration-track:596c865c711d90e057ce146985406e1c4891a45ab83cfd198a5f4e3746f56e5c` |
| 15 | `theorem` | [splits_X_pow_card_sub_X](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/splits-x-pow-card-sub-x.md) | 172 | `result-track:9e7e275590425869c4e8f16d7cb0393340e437bffa093f19299ce9d3276bbf71` |
| 16 | `theorem` | [isSplittingField_of_card_eq](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/issplittingfield-of-card-eq.md) | 177 | `result-track:c8688589f1cebdd6195ceaf6cef2b53b3bbd6567e456f7f0e9e989d81f7f2868` |
| 17 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/instance-source-edition-6.md) | 182 | `declaration-track:a3b6e48d2fe1c51ab4a0153728d23fa89e7d0682820b47b8994e719817552b2c` |
| 18 | `def` | [algEquivGaloisField](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/algequivgaloisfield.md) | 194 | `declaration-track:f2b1472b5eea8c0ede3f9257f70e69111df29850c9cb93f999b1f13e2c98a322` |
| 19 | `def` | [algEquivOfCardEq](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/algequivofcardeq.md) | 207 | `declaration-track:406ab4f95b11b9868bd1dc09fa0bb22608d169c02b65f3d09af7cabf1b77c086` |
| 20 | `def` | [ringEquivOfCardEq](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/GaloisFieldSplitsXPowCardSubX.lean/declarations/ringequivofcardeq.md) | 222 | `declaration-track:81d7cd65a1ff6238a7c42f77103f1561b5aee7ffd6a2d6ec9cfea605fbb99b3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12dc78d500e2105a70751973cd721b2bd80d1fdbad4ac5b4e47121a7af5be868 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean","GRWTSK/_verification/specifications/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
