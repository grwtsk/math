# Verification target: Opposites

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eefe54850c6d80f65fe140d4af017150a4ce7a7f",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant7fe8021469252d173ba4d4ba42812d764c32385164e89f90f9ad8eab78bf60a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eefe54850c6d80f65fe140d4af017150a4ce7a7f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant7fe8021469252d173ba4d4ba42812d764c32385164e89f90f9ad8eab78bf60a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant7fe8021469252d173ba4d4ba42812d764c32385164e89f90f9ad8eab78bf60a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.IsEmpty` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/preopposite.md) | 53 | `declaration-track:f9840177808964b837d03f06481cdee6a5655de23577b32fded4ef761b8a1ed3` |
| 2 | `def` | [MulOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/mulopposite.md) | 62 | `declaration-track:c60c9c68ad7d1545485cbd25dd450302695e229c9c2e8bcdc0c0cb05386cb545` |
| 3 | `def` | [op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op.md) | 74 | `declaration-track:3bc952528ed8978a9684ec74f9f8b74cc5e3598da37c445f8f41b036c94b8707` |
| 4 | `def` | [unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop.md) | 79 | `declaration-track:0bda2233506f4950fccc5c8549c90642a28cf1d3d28415bb74da784e452fe46e` |
| 5 | `theorem` | [unop_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-op.md) | 83 | `result-track:0c27f3523ff98c4f666bbb0219a67ae72b7d217900bdfbf402da475721053947` |
| 6 | `theorem` | [op_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-unop.md) | 86 | `result-track:c8a1f00db596c50f5ff5397fd825444d99c840c51efc54de42eebfb01b414ae2` |
| 7 | `theorem` | [op_comp_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-comp-unop.md) | 90 | `result-track:63669a9b78c8766035f53d657230001082770032f25cc66e865fe91bf47dec86` |
| 8 | `theorem` | [unop_comp_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-comp-op.md) | 94 | `result-track:fb5c804827244e3c38627b1ce1fa319ecc016c81d54af16f7c965d4bdc2f4a05` |
| 9 | `def` | [rec'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/rec.md) | 100 | `declaration-track:3e9866c47128dbe63f58094a8b8813321701688c50ab3c245c697651dfe6a078` |
| 10 | `def` | [opEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/opequiv.md) | 105 | `declaration-track:08286814d36dc2f1ad3ba9de2e0a6d6cbc19981bda61974bb20a953300949e41` |
| 11 | `theorem` | [op_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-bijective.md) | 109 | `result-track:095d88b52f1ba5c201c8be45c31cdce23e924a5693e07e1e04a9480320b0dcfa` |
| 12 | `theorem` | [unop_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-bijective.md) | 113 | `result-track:9652643ef7f41be74590a3f1dc968d38f149cf8bd71b15b52e9aa2eaabe1a3d1` |
| 13 | `theorem` | [op_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-injective.md) | 117 | `result-track:cc4521b827089c272e5eb522a5f4dcaecccf5e400a758417029672b406486740` |
| 14 | `theorem` | [op_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-surjective.md) | 121 | `result-track:bdbb3296033323270521cd6cf4bff244fd34472a7701c0b0e3ec285bfb609e34` |
| 15 | `theorem` | [unop_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-injective.md) | 125 | `result-track:f5b6d8bf18bbb70f9e595f10d0ea03edd9af5398fde45da14909c1eb2bf4739e` |
| 16 | `theorem` | [unop_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-surjective.md) | 129 | `result-track:17a59caedf100271a8d8fb2d21c8f3d195ff6a297072be7a13903560928e41b7` |
| 17 | `theorem` | [op_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-inj.md) | 133 | `result-track:0f2874cb836099c0ea4194831db615235814d3fd29fad5f87d5900d10fd12235` |
| 18 | `theorem` | [unop_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-inj.md) | 136 | `result-track:9a2d0026b8f1568f07c00777446e4f27d82b7ff0f581d96bc2b8c50bb23e6a84` |
| 19 | `lemma` | [«forall»](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/forall.md) | 141 | `result-track:1ebee2f541048388c11c3c79c6d756a4153a220e7fba18e8f051f04b834c6380` |
| 20 | `lemma` | [«exists»](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/exists.md) | 144 | `result-track:f6b6a63d12bf21620ed9e5a14cccabc0c53d6793c488429bd33a32ed04fa9860` |
| 21 | `instance` | [instNontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instnontrivial.md) | 147 | `declaration-track:dc1549f0455ee1d7961067aa7356292a8c84b7b79a1ca087293c5c0149fe10fb` |
| 22 | `instance` | [instInhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instinhabited.md) | 149 | `declaration-track:aa8fdc97d1f44e056842b9956fd0e4a82441c97872ff2a12395ffb0c908a9e1c` |
| 23 | `instance` | [instSubsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instsubsingleton.md) | 152 | `declaration-track:84ab380e7321858da323b9102d7fff659901d741f29e4e6ecf4a0ba4699b59a2` |
| 24 | `instance` | [instUnique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instunique.md) | 154 | `declaration-track:036e46cc6947f64658d3e2bfb9df9fa7ce52faed013a78044c9342854a5b9671` |
| 25 | `instance` | [instIsEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instisempty.md) | 156 | `declaration-track:ab2ead52888fe48c2d0d2aee7096a664b7627d006e7ce671d4679501c4a493fd` |
| 26 | `instance` | [instDecidableEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instdecidableeq.md) | 159 | `declaration-track:d17b1c7e542a678ecbc2e139feab532b959dcbf8e760fc580a4f4fe6cd19cd3f` |
| 27 | `instance` | [instZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instzero.md) | 161 | `declaration-track:392ded868b821850c03ae60e301966332d9cc9b9a3e924e5812cc6e31a61373a` |
| 28 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instone.md) | 163 | `declaration-track:157272e6c71195fd8a4e11c3a0417b08c5b0ed02cbc1c7201d58ed497471abfc` |
| 29 | `instance` | [instAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instadd.md) | 165 | `declaration-track:edabe76f291e776873a821ab25d39a790a61afcbefcf442d8e2d46a0a931ca4b` |
| 30 | `instance` | [instSub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instsub.md) | 166 | `declaration-track:ef9a3e80050303ba6d00eab4b1b036e89a7d04e8c429d3b2189971c4a29cd426` |
| 31 | `instance` | [instNeg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instneg.md) | 167 | `declaration-track:071da0de7dd9d484098c92339c309e39349996714a21bbbdc45fe8c80f6c1162` |
| 32 | `instance` | [instInvolutiveNeg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instinvolutiveneg.md) | 169 | `declaration-track:53682a1c92be8f8c802710940ca79417078ae01cc29cbd8fd5c6062df6dff696` |
| 33 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instmul-source-edition-2.md) | 172 | `declaration-track:e05e36f14cfb67af0497dc6ce82869f228b4be4ad3c27b32f093b547020ebbfe` |
| 34 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instinv-source-edition-2.md) | 173 | `declaration-track:595b3359097c865c4df9067c253841d2d27231ec7974d615f884b89703c3f84c` |
| 35 | `instance` | [instInvolutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instinvolutiveinv-source-edition-2.md) | 176 | `declaration-track:f76ebdd03343a011da8febcb290d57a4d1f3a7d9f1845b4fcb185f4304410a98` |
| 36 | `instance` | [instSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instsmul.md) | 179 | `declaration-track:a27c32c21416747a292fd4a6e8b999c4e80c9822130a0c33165ca2a09b03bf7e` |
| 37 | `lemma` | [op_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-zero.md) | 181 | `result-track:ec5b376236aec39b94ddd997a02cffebce681e364720263013dc53caef412c6a` |
| 38 | `lemma` | [unop_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-zero.md) | 183 | `result-track:67bf764ec50b068e9660de2f2bd2c4854763a09d327623f009fefee3b90c87f4` |
| 39 | `lemma` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-one.md) | 185 | `result-track:05faf498c7af4bdf637c43a70e0b756aef0bf9e208362200ac4e60df0d059455` |
| 40 | `lemma` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-one.md) | 187 | `result-track:1f42f8fb4548c2a6a9d2e4a785b4dedb8389917baee5083bb16695116ceec1bf` |
| 41 | `lemma` | [op_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-add.md) | 189 | `result-track:7b6e6030758a79df836a811e62c8c144c9cbb735bba4cec1e9a15ddc51efc3cb` |
| 42 | `lemma` | [unop_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-add.md) | 191 | `result-track:1e2437dc1c0d314de6a05538771b744cd16db7e9c2c370109cbbaffcf89723ed` |
| 43 | `lemma` | [op_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-neg.md) | 193 | `result-track:f1abc6391f0753984d3d8f689fc82992a8c7c5f1a12b4634dae047df7ec9b481` |
| 44 | `lemma` | [unop_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-neg.md) | 195 | `result-track:c29656228df8bdf2c0fb91c34a861e7c13d28dc324e449f646047cda06208210` |
| 45 | `lemma` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-mul.md) | 197 | `result-track:a0b25c4ca57aec119451d9f2e7529bb653275a51fdf15a19e3737b4ae6d1fd60` |
| 46 | `lemma` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-mul.md) | 200 | `result-track:7f8baefb82ce44cb002326e0adc4bd934eb695423494887976c53abb034bfbc7` |
| 47 | `lemma` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-inv-source-edition-2.md) | 202 | `result-track:b1aa6610303e8930e9ec048dfbd78e0f503909b69a6fcef8ac41454f019600be` |
| 48 | `lemma` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-inv.md) | 204 | `result-track:f6beb0c70816390b8626baa6e17b0beafc96dfe08f3ca2efc89a10834c0040ed` |
| 49 | `lemma` | [op_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-sub.md) | 206 | `result-track:88b1941ae0ef5a74949640f738c119cc639b970606f0a6fa7405d1561f0b4ae9` |
| 50 | `lemma` | [unop_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-sub.md) | 208 | `result-track:0ea572a614287ea039a962e66a159e54537966ae80ddec560f79ad2ee926139b` |
| 51 | `lemma` | [op_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-smul.md) | 211 | `result-track:94b1c22249e5e4ceca692d7e1f3357c6c71eeba52c855042b9ec60ab5bbb5d09` |
| 52 | `lemma` | [unop_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-smul.md) | 214 | `result-track:febb021844e293e9859c9f8f7427e280ae7adc60555d5b36d43b8bd02ac38b4f` |
| 53 | `theorem` | [unop_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-eq-zero-iff.md) | 217 | `result-track:e137aaed04973ba8de65c5f2dd33ac699f9d911431b4011a6bb21454341340e9` |
| 54 | `theorem` | [op_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-eq-zero-iff.md) | 221 | `result-track:b8e8fdee08c66cd8d65147320e2a35c89db1788e07328b26e6a1ac08c4cae60e` |
| 55 | `theorem` | [unop_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-ne-zero-iff.md) | 224 | `result-track:9e873cd14c93482a2959bac6709039b47dfbfaddebc30235bde9b515d5f74f26` |
| 56 | `theorem` | [op_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-ne-zero-iff.md) | 227 | `result-track:3a64d064037e7138bdda94a26d69a4bc2ac83825bb5dba837a335b22aa31c63f` |
| 57 | `theorem` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-eq-one-iff-source-edition-2.md) | 231 | `result-track:d3f2e3bb0fe8c899c372a8b2cf886d30005242b204b838a2be72ebadd3217c8b` |
| 58 | `lemma` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-eq-one-iff.md) | 237 | `result-track:534dd9ebe4a1e5cc51c8a675698c2abe43fcf5fc9860a3ea5ce46064a4e5a116` |
| 59 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instone-source-edition-2.md) | 243 | `declaration-track:e56f2c1f1e25ed9775f57029047134cfbe236b238ac68c3a909599f70fee84eb` |
| 60 | `lemma` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-one-source-edition-2.md) | 245 | `result-track:b81689f2438442ff9ef2b404794ac3543644833184e1c721fde49fa9496d5102` |
| 61 | `lemma` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-one-source-edition-2.md) | 247 | `result-track:c10d1f75e1b73bda66665edfcafd99f2a568292473935928675d2b8b12dfac39` |
| 62 | `lemma` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-eq-one-iff-source-edition-2.md) | 249 | `result-track:68bfa19c5bd88c86bd6b513b5e63d919991ae0912af6d36d94e5b818417f315a` |
| 63 | `lemma` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-eq-one-iff.md) | 251 | `result-track:37cce041241b75278aea0e1a9573f1170bd9d9a593da436d703d538456ec4093` |
| 64 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instmul.md) | 255 | `declaration-track:c20e5e3793e64e45e699ea1c9272d4507d585b047c9003c5e588ed76f77c73bd` |
| 65 | `lemma` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-mul-source-edition-2.md) | 257 | `result-track:d42c95814e8f2608c94c0be43be719ab1cc9dc8b5c01cc4a47ccf6df2ab3b5e8` |
| 66 | `lemma` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-mul-source-edition-2.md) | 259 | `result-track:e9fa46a7a5dcebc42e473875e3c48a83f806ed1d3918708cec194381118abab5` |
| 67 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instinv.md) | 261 | `declaration-track:0feba70cea9a74201d6229d1c5d04d09eb2f1406afdcff6c20b255710b0d92e0` |
| 68 | `instance` | [instInvolutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instinvolutiveinv.md) | 263 | `declaration-track:8f2814e5d8a548d31f2da295df1a8420d624b0cfa55e43cb41916799a4d9b0e9` |
| 69 | `lemma` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-inv.md) | 266 | `result-track:ae9bb80f42034760c6d83952e9d88caaa4f3d903ddadd5ddb4f2aaf7e6264c0e` |
| 70 | `lemma` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-inv-source-edition-2.md) | 268 | `result-track:fd23172577f9f2f93a38a8013c58f6d84616fc3a54f063acab24cf16f8af8d1b` |
| 71 | `instance` | [instDiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/instdiv.md) | 270 | `declaration-track:ad645ef0b9d13977fe723f8fbe5a816e35441daa5d0330b390d32f0b093bd673` |
| 72 | `lemma` | [op_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/op-div.md) | 272 | `result-track:3c50288603ff916f84a084bf66c39582ea4d8bc83d66d832c4cb4dd597739d05` |
| 73 | `lemma` | [unop_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Opposites.lean/declarations/unop-div.md) | 274 | `result-track:d33afd3151df524e40bfc41b7e24823a43c693b43468edac07ac235da83baad5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e5dc67bcda14d3e2da010002b30613d8b250375da807c426bfab0afa7addf73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant7fe8021469252d173ba4d4ba42812d764c32385164e89f90f9ad8eab78bf60a3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant7fe8021469252d173ba4d4ba42812d764c32385164e89f90f9ad8eab78bf60a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
