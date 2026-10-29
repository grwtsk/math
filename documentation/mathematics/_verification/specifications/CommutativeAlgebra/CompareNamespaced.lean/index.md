# Verification target: Compare Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e07cd23ade9056ccbc8a8955fbc422b7a59f93b3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CompareNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CompareNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e07cd23ade9056ccbc8a8955fbc422b7a59f93b3`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Truncated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Identities` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.RingHoms` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_le_of_cast_pow_eq_zero](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/eq-of-le-of-cast-pow-eq-zero.md) | 49 | `result-track:bd35d7f0b3b9ef1c027b54504279b69eeebde44a8bf6136e4998c9e94f31dfa1` |
| 2 | `theorem` | [card_zmod](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/card-zmod.md) | 65 | `result-track:725c4afbef492cee875e985812894395170d2e70bd08c61b7cc142e0b85f7a62` |
| 3 | `theorem` | [charP_zmod](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/charp-zmod.md) | 68 | `result-track:2323f19ef4189bbda2aac4398cfa401c1a40d729bbdba5eab2752b2d83f168d6` |
| 4 | `def` | [zmodEquivTrunc](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/zmodequivtrunc.md) | 78 | `declaration-track:5b1fe5b653e81e676dd3bd898494a7258230b8f97407e137baecac2707c8b549` |
| 5 | `theorem` | [zmodEquivTrunc_apply](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/zmodequivtrunc-apply.md) | 81 | `result-track:0db2d731c8050555bb3bc8bb0551b9244326605a23b767c81a06e211375f4339` |
| 6 | `theorem` | [commutes](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/commutes-source-edition-2.md) | 98 | `result-track:688de18e7686dcd79e821303167522fe2858861a4e1006619b668399a9e43976` |
| 7 | `theorem` | [commutes'](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/commutes.md) | 103 | `result-track:0e28ba4f280935899a184798cbe3ad4c91847025aa522b7dc5e18a0e2fcbc575` |
| 8 | `theorem` | [commutes_symm'](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/commutes-symm.md) | 107 | `result-track:bc2ca6c6f8d32c62bbb6b7c4590c8128fb7719ac282100315a5930204b2a94ca` |
| 9 | `theorem` | [commutes_symm](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/commutes-symm-source-edition-2.md) | 126 | `result-track:d51aaa1b5db06beec3a0df675795a2f0fda41db1b58644c85d6b6abeeda54446` |
| 10 | `def` | [toZModPow](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/tozmodpow.md) | 143 | `declaration-track:30d2dd674971b24c5dc078afa179e8ad22ecf94ebb080a404171209bb111d2db` |
| 11 | `theorem` | [toZModPow_compat](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/tozmodpow-compat.md) | 146 | `result-track:805fd7063483de2b04e9212b6a762f231f87e8b97a8f576c919b0a581c1e65c5` |
| 12 | `def` | [toPadicInt](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/topadicint.md) | 159 | `declaration-track:aebf102f9fb656ca1a16c9119a8be8532f656523704379ed50bfb3d4bebbe4aa` |
| 13 | `theorem` | [zmodEquivTrunc_compat](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/zmodequivtrunc-compat.md) | 162 | `result-track:0351dc24e168af38d566c11fcc45462b3e1c25da9378dc9fb14be4fbdaed099e` |
| 14 | `def` | [fromPadicInt](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/frompadicint.md) | 172 | `declaration-track:a165467bd476d36afe6a9bf3bfae651a5a940566cb2f03ef2a5eeba6f931d126` |
| 15 | `theorem` | [toPadicInt_comp_fromPadicInt](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/topadicint-comp-frompadicint.md) | 176 | `result-track:e1b458257942b5e223b3134714c399af2081322567ea04952cb88d8b26760272` |
| 16 | `theorem` | [toPadicInt_comp_fromPadicInt_ext](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/topadicint-comp-frompadicint-ext.md) | 184 | `result-track:2a982cd62145800d054872a179117c3feebe1dc45a9903e929f7857a7d15758b` |
| 17 | `theorem` | [fromPadicInt_comp_toPadicInt](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/frompadicint-comp-topadicint.md) | 188 | `result-track:198fe7be2555ff478885dfea921154c8d1c537934cf790226719ba5e464fc05a` |
| 18 | `theorem` | [fromPadicInt_comp_toPadicInt_ext](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/frompadicint-comp-topadicint-ext.md) | 196 | `result-track:ea32ea4eabee3cb88cc766540184006a8472cadbd2a6f4654dab0f92c5685c32` |
| 19 | `def` | [equiv](../../../../CommutativeAlgebra/CompareNamespaced.lean/declarations/equiv.md) | 203 | `declaration-track:944c8f3fbafb568a34c1812e53281b7c9402a8478596853efbbbbbc13b018425` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9c7f4088d89f09e3697b38f3b68021fbfd6cc0ab9e1c0fb86f297ce8436521e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
