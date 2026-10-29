# Verification target: Properties

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fbe6df4c88e582690d3d25800d33539a21d1c2d",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fbe6df4c88e582690d3d25800d33539a21d1c2d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isrefl-source-edition-3.md) | 54 | `declaration-track:e24b9c10842120e084e5b5dc5afb0ed21d1c31840f6ddafd3d0856ddd5778ce7` |
| 2 | `theorem` | [eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/eq-zero.md) | 58 | `result-track:89454eacb45ba3306691ab5742f4587f9bca065ac524b691ae8841dd74174720` |
| 3 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/neg-source-edition-2.md) | 60 | `result-track:192197a17d966c89d7d24029ad7a71ed1c7be86069636608185f4e5ef11f149a` |
| 4 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/smul.md) | 63 | `result-track:13ed99b591e729ebf20da39fece9e8e523332f91dab0414832bc11c7e38b9138` |
| 5 | `theorem` | [groupSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/groupsmul.md) | 69 | `result-track:b6917ac53d5917c7c30df488a200eec0d413093f7ba4c196769e95c04ed1027a` |
| 6 | `theorem` | [isRefl_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isrefl-zero.md) | 76 | `result-track:6a8dca9f3ee848080697074cf8dfc85bc0fe343abffac332445fc8b52fd07831` |
| 7 | `theorem` | [isRefl_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isrefl-neg.md) | 79 | `result-track:4ab7ec696f2fb21cfd7f4fa5a109d3feeaad5eb83d626649d48286fee2f0bd17` |
| 8 | `def` | [IsSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/issymm.md) | 83 | `declaration-track:740af87346f12925e545ca8eaeb7c2dd48b6889e3442c5dd43d33e3124f1933b` |
| 9 | `theorem` | [eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/eq.md) | 87 | `result-track:9f5f201972b9635fc2f12bb065ce9e1b9a725c3bcb48597df8e6aeff79186f7f` |
| 10 | `theorem` | [isRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isrefl-source-edition-2.md) | 90 | `result-track:bfcb7782db21d7198e58b40873310c22aa6049c7f865a626d750b4068f496db4` |
| 11 | `theorem` | [add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/add-source-edition-2.md) | 92 | `result-track:7639d4e5bfbb9cd363b5f1648ca25846d5d2cc78a54a0c1500b483bb6db5d417` |
| 12 | `theorem` | [sub](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/sub-source-edition-2.md) | 95 | `result-track:e5ce697bf7b7b67f81ef3faaf8b43df172eee8df3ccfdaa6354e860cb36a3249` |
| 13 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/neg.md) | 98 | `result-track:0d18c55cb90ed6f72090fd66531a27806e0077cfab27954f3b7aad1ec10eb57b` |
| 14 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/smul-source-edition-2.md) | 101 | `result-track:716fc37b509533fe195f9fd663338c7040c6dcc1434d5258c77b90ac3300ab26` |
| 15 | `theorem` | [restrict](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/restrict.md) | 106 | `result-track:f26125fa8aedb363473495aa741ce5346a902afe5550c69d2ebe4957912892f7` |
| 16 | `theorem` | [isSymm_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/issymm-zero.md) | 112 | `result-track:cfcabc62e6fba52dfbfad0cf0c618c213150bfa00d67ee6a90bf76b7e9ff234a` |
| 17 | `theorem` | [isSymm_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/issymm-neg.md) | 115 | `result-track:494f05a27d4190c26070c0946ef49eb8a5ecbd3ea73c8a8897f7574deedd0b56` |
| 18 | `theorem` | [isSymm_iff_flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/issymm-iff-flip.md) | 118 | `result-track:3c5fd1752e61f5528113769c18810d1fcad1a53d31eaf7c09b36de5c949dac18` |
| 19 | `def` | [IsAlt](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isalt.md) | 122 | `declaration-track:c33101668f93f00acc038beb16646d0ddb942a5cc6cfedfaffc478c09c7b61cb` |
| 20 | `theorem` | [self_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/self-eq-zero.md) | 126 | `result-track:8772230a10dae8b63934c1825295300326b1bd0f348a67797a7e3361402df9f5` |
| 21 | `theorem` | [neg_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/neg-eq.md) | 128 | `result-track:e094746081a3a3fa7fc25624da3ea7f39b8d7efc4004bc6aecaaa13a031470e6` |
| 22 | `theorem` | [isRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isrefl.md) | 130 | `result-track:1daf7f0fce730639dedfa9a6f61f5a4021aa224003567befd8283445ee8c72b5` |
| 23 | `theorem` | [eq_of_add_add_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/eq-of-add-add-eq-zero.md) | 132 | `result-track:62093099ddf960923963ef13de14d765bee15e5c1d8ed53d632e60b2c9d45198` |
| 24 | `theorem` | [add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/add.md) | 135 | `result-track:5bf8912043ed1fa3757361b7be2cbad3359451e26d0ec5b844f2c82eecba4b90` |
| 25 | `theorem` | [sub](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/sub.md) | 138 | `result-track:4c0d8a1f56a0e870047338a16a8bf43e489ec2f19cc70576750d85f75c91a21a` |
| 26 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/neg-source-edition-3.md) | 141 | `result-track:7b86439403031eb648d0298d94e3ee2c733d3cd1d8dd7d63fcb7550a97bf1716` |
| 27 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/smul-source-edition-3.md) | 144 | `result-track:8895385364edefe47c5194786c9ec62d8702d53ebbd89587d95e536dbda6a51b` |
| 28 | `theorem` | [isAlt_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isalt-zero.md) | 151 | `result-track:8f656ccf7c9115c343ec674eb598587e7e20380b220390fcfdfa41be35b44da3` |
| 29 | `theorem` | [isAlt_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isalt-neg.md) | 154 | `result-track:269edac04218b433286ac266135df2959d0748b36cec079e713a732d7a476b8c` |
| 30 | `def` | [Nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerate.md) | 169 | `declaration-track:683fbcbbb8860e2b3c71878ec77cd6ed3733d31745d694a12b634c22297a3ef6` |
| 31 | `theorem` | [not_nondegenerate_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/not-nondegenerate-zero.md) | 177 | `result-track:fe407faa1992633a95ba9968ec5e7eef4be8a8e6606f4d2d2bdc7ff2811e6bb3` |
| 32 | `theorem` | [Nondegenerate.ne_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerate-ne-zero.md) | 186 | `result-track:29cece3eaa47ae3a6a2dfee5a1bd176d500b15e041c0046fa581aa4b4c16e17b` |
| 33 | `theorem` | [Nondegenerate.congr](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerate-congr.md) | 189 | `result-track:524c173a6c1cb64aba0710a30f713bee4f1ac1b74329d9fb8f1cc625dd9d3475` |
| 34 | `theorem` | [nondegenerate_congr_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerate-congr-iff.md) | 195 | `result-track:a2c3bffd98139547e464682c099dfb62e357f04ea3fd87b59c36b0e3d2060376` |
| 35 | `theorem` | [nondegenerate_iff_ker_eq_bot](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerate-iff-ker-eq-bot.md) | 202 | `result-track:bcd17dea15cf11d032648a64b4f4ce4a05553ee5bc55f97ab29f6dd1ace8d67c` |
| 36 | `theorem` | [Nondegenerate.ker_eq_bot](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerate-ker-eq-bot.md) | 207 | `result-track:b59ac77414246b66a66f9a53febb9c549cb9ecb0463202c85406534bce40d2bc` |
| 37 | `theorem` | [compLeft_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/compleft-injective.md) | 210 | `result-track:450ac9dd161599e39ecb02bc91e1b4da2f61d2b7cf9fdefc5e6b133a69b6385e` |
| 38 | `theorem` | [isAdjointPair_unique_of_nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isadjointpair-unique-of-nondegenerate.md) | 217 | `result-track:6f5b3a96a060c9248619ec2d87e8083bd351eb54bf01af0b9187d3eaf51899c1` |
| 39 | `def` | [toDual](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/todual.md) | 228 | `declaration-track:5c1e2331e0e116d38bee565ad5c474523f03b0ddc1cd4a91d6774231c0d8ec49` |
| 40 | `theorem` | [toDual_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/todual-def.md) | 232 | `result-track:73c99e32c294659f32d06135c1f0f22944380adc021e49437987945fc09a7b70` |
| 41 | `lemma` | [apply_toDual_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/apply-todual-symm-apply.md) | 236 | `result-track:1c46e030e2dd50214fee4449496865480eb57e546d66f79184c518d3b5755d3c` |
| 42 | `lemma` | [Nondegenerate.flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerate-flip.md) | 242 | `result-track:39dc82c3078b283a3b055ce5a2e305b753315706c28fb7f79d824c5122e0068c` |
| 43 | `lemma` | [nonDegenerateFlip_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/nondegenerateflip-iff.md) | 250 | `result-track:cd3af5c9c7c64ecb51ffd8a9018391cfe2b27b98d76a49b21560ee7405a3089c` |
| 44 | `def` | [dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/dualbasis.md) | 262 | `declaration-track:bdbbd163fb88319dbf33a7b0a153c122c6e8afa09c9334e1e9a4176b45178587` |
| 45 | `theorem` | [dualBasis_repr_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/dualbasis-repr-apply.md) | 268 | `result-track:bff8e8e9503d71e08fbb40ea5537f424825dfd26cb4a5a4f0b510af831d05b3b` |
| 46 | `theorem` | [apply_dualBasis_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/apply-dualbasis-left.md) | 277 | `result-track:08dd0a3bcb326032798259f23eb83e2931f0e04ffb507ab1af4cf7e785ad3b8a` |
| 47 | `theorem` | [apply_dualBasis_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/apply-dualbasis-right.md) | 283 | `result-track:45ba75b2f3a61ab6b5ad147bb6c2d710aa6c8eb824db854a4b25e4fb0c3c984b` |
| 48 | `lemma` | [dualBasis_dualBasis_flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/dualbasis-dualbasis-flip.md) | 288 | `result-track:8f015d3023463fca3dab608b9ba33419e84b435656ff8b0df521ca0bba7c1b85` |
| 49 | `lemma` | [dualBasis_flip_dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/dualbasis-flip-dualbasis.md) | 297 | `result-track:c92803d63b10e830fa576e751da9c20de7aef64db3778a87e33bb4c673842ec9` |
| 50 | `lemma` | [dualBasis_dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/dualbasis-dualbasis.md) | 303 | `result-track:39ed697a21b003f124ffda1636a1d29797671867e908283367f27c49f51c21af` |
| 51 | `def` | [symmCompOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/symmcompofnondegenerate.md) | 317 | `declaration-track:6d93d401ee4bd5519fe779f04df45248de4ed233bde881a8e9af5c31d6868ffa` |
| 52 | `theorem` | [comp_symmCompOfNondegenerate_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/comp-symmcompofnondegenerate-apply.md) | 321 | `result-track:543063af23a19847abbe74f892a5b9dbd4a01985da4682e289a5e8245ce558b4` |
| 53 | `theorem` | [symmCompOfNondegenerate_left_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/symmcompofnondegenerate-left-apply.md) | 329 | `result-track:da42dded9579b37f46f38107f2c574ea960a596f85d2327ac9e46f58188dac4d` |
| 54 | `def` | [leftAdjointOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/leftadjointofnondegenerate.md) | 336 | `declaration-track:39d65e1db746af83c074a9268a5fb82a7c050fbd7ad2a513224e15535eb229d4` |
| 55 | `theorem` | [isAdjointPairLeftAdjointOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isadjointpairleftadjointofnondegenerate.md) | 340 | `result-track:1d4f28a0da8e8b8ceef1801f63db664e33e29d29a4f7329479386907cc909acc` |
| 56 | `theorem` | [isAdjointPair_iff_eq_of_nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/Properties.lean/declarations/isadjointpair-iff-eq-of-nondegenerate.md) | 346 | `result-track:24c9be034b4452fca3e1276c10ce3a9fab57527b43f1347c837ec9f9c2a17e5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23a580b7d3f81ab285441c36ada74a33107f91bb97ef23c2f48cb109fb6d702c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
