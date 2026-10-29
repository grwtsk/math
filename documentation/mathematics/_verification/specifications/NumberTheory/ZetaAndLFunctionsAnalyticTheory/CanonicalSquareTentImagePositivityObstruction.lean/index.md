# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bac486f0de9614377cc58fd3755dcd4cb39ac1ff",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bac486f0de9614377cc58fd3755dcd4cb39ac1ff`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization`](../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalSquareTentPolarization.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Extension](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extension.md) | 39 | `declaration-track:20112588087c2be99b5a98da7f92c27dae56c0bc78272d021bfea9029d12e0eb` |
| 2 | `def` | [arithmeticEmbed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/arithmeticembed.md) | 42 | `declaration-track:b4e6fbbd06f124ba9e35ef9ace0dac99b43ef593a09158f4a6742fdc179f21fc` |
| 3 | `def` | [extensionForm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensionform.md) | 47 | `declaration-track:735c982a9453a0101e52a96bcfacf3d5e6e3b2d8891f12ac290a84f8ba909b59` |
| 4 | `def` | [extensionDiagonal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensiondiagonal.md) | 51 | `declaration-track:ec86c524730970ff5ca22489e4c96146c87fa6ca198e803c1ca04c298475dbc1` |
| 5 | `theorem` | [arithmeticEmbed_injective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/arithmeticembed-injective.md) | 54 | `result-track:7c7b3035eb45883b1c7fe2d582868e3a84b7ad510a3bf51018a9e255a0e424d5` |
| 6 | `theorem` | [extensionForm_arithmeticEmbed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensionform-arithmeticembed.md) | 60 | `result-track:91e561444a078b8b9f7d4f4872a67fc141c7ec146e05785281d0eb0cb3883ff7` |
| 7 | `theorem` | [extensionForm_hermitian](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensionform-hermitian.md) | 68 | `result-track:5ae3d82645bdfae3c1b9e2479f2940cb440f01288f3d2c81ef6f9ad55a7bb002` |
| 8 | `theorem` | [extensionForm_add_left](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensionform-add-left.md) | 75 | `result-track:a5363568807d1daeb74158b5ec0c83555a5c3ac4d918547b272fa8f2306d5ef8` |
| 9 | `theorem` | [extensionForm_add_right](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensionform-add-right.md) | 86 | `result-track:c42d105f36074a5c5589e9cb40f72a67f1e3c65fd4e1a4e23be5a5816fe80720` |
| 10 | `theorem` | [extensionForm_smul_left](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensionform-smul-left.md) | 96 | `result-track:616071e60adec335a891478816b144692d41db44ed8b39c96246cd06a8641579` |
| 11 | `theorem` | [extensionForm_smul_right](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensionform-smul-right.md) | 105 | `result-track:35de0d436301fadc258b63e9f85b40c58cc63396ee14f970e75b4d22f5a62867` |
| 12 | `theorem` | [extensionDiagonal_arithmeticEmbed_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensiondiagonal-arithmeticembed-nonnegative.md) | 116 | `result-track:cfc487b43c139f6640ba2c212d2e0778e567035c339a20f6e45d0e555d48a082` |
| 13 | `theorem` | [sourcePolarizedForm_zero_self](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/sourcepolarizedform-zero-self.md) | 123 | `result-track:3c108feb0b61b6bb797579869033ae23d3fa804ebc4938b3dc266415720df378` |
| 14 | `def` | [negativeDirection](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/negativedirection.md) | 129 | `declaration-track:c3574e745ec764188cc0e9fda7e12b51c445d83514050d07c1999f0b2bb33a54` |
| 15 | `theorem` | [negativeDirection_not_in_arithmetic_image](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/negativedirection-not-in-arithmetic-image.md) | 132 | `result-track:16f047e819ec314247d58b810cbf6acdda0444d3bb36677b1e72e578719913c9` |
| 16 | `theorem` | [extensionDiagonal_negativeDirection](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/extensiondiagonal-negativedirection.md) | 139 | `result-track:b8ce4990d9c61aeb96e6c0b07db95c711c0f51dda62cc1f426ad701ccf523834` |
| 17 | `theorem` | [arithmetic_image_positivity_does_not_imply_global](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/arithmetic-image-positivity-does-not-imply-global.md) | 147 | `result-track:a1e6b982820f7d856fcbb86881b099066b8bacd43be32a3f59423befce4c66d1` |
| 18 | `theorem` | [not_globally_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentImagePositivityObstruction.lean/declarations/not-globally-nonnegative.md) | 168 | `result-track:403fa532b3476a1f523afb1dddb8d82ae4285cfe084c5cf7c3a8d15ed45c43b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03c7553834bb21b6c659320b3d0cb0c7c89d864e12822e9f1a2adaf04893289b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalSquareTentImagePositivityObstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
