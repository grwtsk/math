# Verification target: Group Action Prod Smul Fst

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "940fd29bfc7c02fa458f6c6131539f1dd2167d75",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `940fd29bfc7c02fa458f6c6131539f1dd2167d75`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul.md) | 44 | `declaration-track:bc320cd314800f472093d890326ba2bf9eeff719e1a3b74f359d00a92e708f1e` |
| 2 | `theorem` | [smul_fst](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul-fst.md) | 48 | `result-track:3ad5df24ec6c1e28700194cfe43bd582c53511df7061458779a5f41ea13a17b4` |
| 3 | `theorem` | [smul_snd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul-snd.md) | 54 | `result-track:196ef82747db5b17179cdd3c1d718fbcd6beecbae642e10f3adbee7d25fe1682` |
| 4 | `theorem` | [smul_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul-mk.md) | 60 | `result-track:3f137cab380efdfee5351803c707982e7936113f83c1e544219b34fd4e57198e` |
| 5 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul-def.md) | 66 | `result-track:e7328ef5f5e4b44e3712424b90ee38c8ff587b545dfeaff903487e9c80358755` |
| 6 | `theorem` | [smul_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul-swap.md) | 72 | `result-track:e13ba6cbe53653c6f8e1f0e9d178fc9c0e4678dd65803053dacab14a5e1ac158` |
| 7 | `theorem` | [smul_zero_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul-zero-mk.md) | 77 | `result-track:b56fb5007ae57f5cd10c4e98f6b482326c9225d6e1c74912889f000c6d3e23a3` |
| 8 | `theorem` | [smul_mk_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smul-mk-zero.md) | 81 | `result-track:89926d7bb0a02709c1413aca36769f918b130abeaeb2173ba9c93c53147391da` |
| 9 | `instance` | [pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/pow.md) | 88 | `declaration-track:178981696a12d80354143d4bffabf783efa5cb9e58064d34710593ec2c1b0899` |
| 10 | `theorem` | [pow_fst](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/pow-fst.md) | 93 | `result-track:560c5d06fe9a7363f91c01058a69e914ca88c761dfe4968d159897dbee482c6a` |
| 11 | `theorem` | [pow_snd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/pow-snd.md) | 98 | `result-track:9a1d794123ce667eec362aa9926eb714f0c611debaca900ea261a66123ae082a` |
| 12 | `theorem` | [pow_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/pow-mk.md) | 106 | `result-track:944307858429eee48704b2b004b8395a30fa6a728f756f1b37521cece2fac376` |
| 13 | `theorem` | [pow_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/pow-def.md) | 111 | `result-track:b6e93a929e09a0bf7a1e4e111ab83e82e183343b26fc3d7af0c992ca9a5bc3aa` |
| 14 | `theorem` | [pow_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/pow-swap.md) | 116 | `result-track:45441ff01d8d014281282866e1acec6ab85dbe340a29b2dbbb7efeaaed072335` |
| 15 | `instance` | [isScalarTower](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/isscalartower.md) | 121 | `declaration-track:78372eabd6f0821a205c9ceaaf06ec501d34141b85afbbec88e0034d65cd242f` |
| 16 | `instance` | [smulCommClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smulcommclass.md) | 126 | `declaration-track:9d90b455931b798a9288c9eaa48cd2efe5a87fa075f7b98c55d46dd9058b20f4` |
| 17 | `instance` | [isCentralScalar](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/iscentralscalar.md) | 131 | `declaration-track:b25ee33c69d691ce59a5e895ef8841b18bdf84616e31589ff531fb4dbaa43dfc` |
| 18 | `instance` | [faithfulSMulLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/faithfulsmulleft.md) | 138 | `declaration-track:cba717185df9b79bd766a079047f1b5e75fb7ba8855a772c728603df1e215737` |
| 19 | `instance` | [faithfulSMulRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/faithfulsmulright.md) | 146 | `declaration-track:57eadad43bd57f6e1c32bcf580ff823519ca32c957abf6a8cc673440e4da29be` |
| 20 | `instance` | [smulCommClassBoth](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smulcommclassboth.md) | 156 | `declaration-track:968201ee49bcdaf361b8c9e3bd47455dd41f7e0ee2fedc1bd75c9a94a6d8dd19` |
| 21 | `instance` | [isScalarTowerBoth](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/isscalartowerboth.md) | 162 | `declaration-track:f4b32f98d190b33e96610acecfe4d47ad231678f3fc6343c15be21e77c4afe7b` |
| 22 | `instance` | [mulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/mulaction.md) | 168 | `declaration-track:f56c4e7502d0349b175ea5aaeda92ea024ba1d65411f44dec3684200d9c9e98a` |
| 23 | `instance` | [smulZeroClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smulzeroclass.md) | 172 | `declaration-track:23594f9f95aa00a3f688ec57be71c6c8dc5021e343915687254f12c791e9a890` |
| 24 | `instance` | [distribSMul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/distribsmul.md) | 175 | `declaration-track:9108427d903496c3ef294300852017aae6ec84838d521c40700a4d05182b5c91` |
| 25 | `instance` | [distribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/distribmulaction.md) | 179 | `declaration-track:cd0f074bf4cdac90bce256b11996040431b9f77bfdb22c5555ba2a7a759e0bf7` |
| 26 | `instance` | [mulDistribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/muldistribmulaction.md) | 183 | `declaration-track:6cd8265f819f767027c8ca1a1a23707778a846f08c025304fc65adda3b4f050c` |
| 27 | `def` | [smulMulHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smulmulhom.md) | 196 | `declaration-track:bfa5b6a895890353b0797b5a1f9bb261438296f1cafa3d60f3974f0cf753b73b` |
| 28 | `def` | [smulMonoidHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionProdSmulFst.lean/declarations/smulmonoidhom.md) | 205 | `declaration-track:dc21549e2b7e9dbee150ce046547997de66ee1c16e21838b83f7296915b44a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8d2cdabb24d98217f7f55045035db48c46cb0fc88c4ca24d68c816bc1fceb82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
