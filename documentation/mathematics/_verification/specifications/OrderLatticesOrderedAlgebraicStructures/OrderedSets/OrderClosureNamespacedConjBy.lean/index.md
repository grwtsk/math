# Verification target: Order Closure Namespaced Conj By

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9924d2627a270f65eba2223ac66b345048f354c3",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant9e004b28f8a5251dafe3a2900d7f9d2a814108a91c0fa937d3af754c755a9a85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9924d2627a270f65eba2223ac66b345048f354c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant9e004b28f8a5251dafe3a2900d7f9d2a814108a91c0fa937d3af754c755a9a85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant9e004b28f8a5251dafe3a2900d7f9d2a814108a91c0fa937d3af754c755a9a85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.BooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closureoperator-source-edition-2.md) | 64 | `declaration-track:e4301683ad136532fe299bccad2f8c954e8bb588d7565cc7395a4f3d62e0ae3b` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:80e387127aeec9b4e0a41a77d002de9e9cda56b7dfb9fa4b5b1928b21deadd2b` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:7c1da924efab357d190acee82cface61c43ad087a7a022f634524a4cc87d6e71` |
| 4 | `def` | [conjBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/conjby.md) | 91 | `declaration-track:265195bb44a92e834c2a8203d16fda2ed9909b8ea4022c6af10d418a89445a09` |
| 5 | `lemma` | [conjBy_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/conjby-refl.md) | 102 | `result-track:9bc5f28a383cbf78b84378594507a04d4a486cdc4ec3e2371550eda6906ac2ab` |
| 6 | `lemma` | [conjBy_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/conjby-trans.md) | 105 | `result-track:efd0ed03f2be5ea34314c84173936f7706b9b223caaa890ef35c66cc55fc1c85` |
| 7 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/id.md) | 115 | `declaration-track:73aca485d29c2b64708bd1056b4ea3b57ab410318e05a0866f0c417efdb865eb` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/instance-source-edition-4.md) | 121 | `declaration-track:ad538c55f065ffca5f25d50536741e50ac84df54dc040ff92e14c7f4605545b0` |
| 9 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/ext-source-edition-2.md) | 128 | `result-track:bed98a3cd20e7d472baeaa944dacf6bb099af7043de9da9d0e0831a1718676d1` |
| 10 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/mk.md) | 133 | `declaration-track:8af44b0aada1e5e394d37eff352256e2baa5b1ffae728395ffcf0f12212bb7c2` |
| 11 | `def` | [mk₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/mk-source-edition-2.md) | 143 | `declaration-track:b235fa091f02c5a064e16aad3e242054197807b576982083cc8893fb64b29abe` |
| 12 | `def` | [ofPred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/ofpred.md) | 153 | `declaration-track:486d9a8cebcd28aae9141863ec7c3e48239f8b72cdc910e5f77477d67190181d` |
| 13 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/monotone-source-edition-2.md) | 160 | `result-track:6524c9f4ca8e50cc5b5e7f6884087cf9ab6414bfeface25d01f09ae746f57126` |
| 14 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/le-closure-source-edition-2.md) | 165 | `result-track:94874038a8cc1dbb9755f826214bcf01615e29a0a21e6d67cdde0103e01c098e` |
| 15 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/idempotent.md) | 169 | `result-track:b04fe1d95d8d7393b0be5a8c58f413c6c05dd01b9dba89c2aa4e892bd723eb95` |
| 16 | `lemma` | [isClosed_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/isclosed-closure.md) | 172 | `result-track:4c881691bd2a50547d3dfa8d36c1ce21c6b2bfcae9c4cc4f315e0a56847c7f8d` |
| 17 | `abbrev` | [Closeds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closeds.md) | 175 | `declaration-track:082e34372595f4949a4a6dbdaf47eff55968d48c9201471188034406e3951551` |
| 18 | `def` | [toCloseds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/tocloseds.md) | 178 | `declaration-track:7a6078ddbea8efdb02ee454e85587fe49c2738ea27ad010b982aa23346f4e286` |
| 19 | `theorem` | [IsClosed.closure_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/isclosed-closure-eq.md) | 182 | `result-track:4c8575efa2ed29f257037a53c1844da87aca1cdc3be8ca294cf5b45d4296eefd` |
| 20 | `theorem` | [isClosed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/isclosed-iff-closure-le.md) | 184 | `result-track:d3b75d839c4b334bb6ac4509eb2fd82ddbd7d832174de18024e94ba3e2771085` |
| 21 | `theorem` | [setOf_isClosed_eq_range_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/setof-isclosed-eq-range-closure.md) | 188 | `result-track:c53ea5214619b36ec08be047718a7bc311dc23c82f463e03e4ab8feb43b26c65` |
| 22 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/le-closure-iff.md) | 191 | `result-track:69499e38e86042435a98d785cf65383cc41131c17793751454b8b3e010a8d54d` |
| 23 | `theorem` | [IsClosed.closure_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/isclosed-closure-le-iff.md) | 195 | `result-track:393125708d2713b1a881cac71fbfe8128a2a510542fbadc4d83feac9d21a124f` |
| 24 | `lemma` | [closure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-min.md) | 198 | `result-track:51940fdc544b103751618cc5a76c6add06fdc6d3bff96a58351148e24e7c7cd7` |
| 25 | `lemma` | [closure_isGLB](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-isglb.md) | 200 | `result-track:12cdd57f79b072448d5e1855098fb11eb5427e3f8e8968cab25da9443de66fd0` |
| 26 | `theorem` | [ext_isClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/ext-isclosed.md) | 204 | `result-track:3948fbef4801daf0ab8c3edf27008df0b5155b28b9d58af0c1b454cc5422e0af` |
| 27 | `theorem` | [eq_ofPred_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/eq-ofpred-closed.md) | 211 | `result-track:eeea49c9788c500da462ec117d7e9dbfa5129d0595a80989b5cb31c9e56d8164` |
| 28 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-top.md) | 225 | `result-track:399c3dbdd86028727f52f688cb5d91a8d228aa30032d367b6a6c54b3220825c6` |
| 29 | `lemma` | [isClosed_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/isclosed-top.md) | 228 | `result-track:f2dbe5762ad9ccd2ad531083014192750fdcd0fb4cbd953db16e41a95cfbd0df` |
| 30 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-inf-le-source-edition-2.md) | 232 | `result-track:8feeabc9e4973f2df831cc05fc05d655acb2c07b33ac6cbaac02bf29632d4240` |
| 31 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure-le-source-edition-2.md) | 240 | `result-track:61eb4543a33063e244b7aaa87fc93ba9b5b66b253ae8985e6c350a5ef1b668ab` |
| 32 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure-left.md) | 243 | `result-track:22945d6be086010ea3451a56e01a6f925ce865b39f384158279953ea244c0bf8` |
| 33 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure-right.md) | 248 | `result-track:7e90ee05536d3b490a9ca96096ce78ab7f78f0d933f969f5efe1b51e096a8f4c` |
| 34 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure-source-edition-2.md) | 251 | `result-track:77c5a0bdbb80889b3550a021be9c377e55eb4432d54d4287e8e3478cda60df99` |
| 35 | `def` | [ofCompletePred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/ofcompletepred.md) | 262 | `declaration-track:22e6ea0a82dad6b6c109c22aeb91d43619df1ab4acf2885afdb3bbd10fd5e23b` |
| 36 | `theorem` | [sInf_isClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/sinf-isclosed.md) | 268 | `result-track:7e815d18c655ecf5698835055ac02104a74b360ebccfe0f5ebec84645c8e1488` |
| 37 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-isup-closure-source-edition-4.md) | 274 | `result-track:e1c0c63c519fafe2ff34856a75ac2f32142186fe0792e7cf097fea0aca49e10f` |
| 38 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-isup-closure-source-edition-3.md) | 279 | `result-track:dc3d159d3906ef85ca8ca6713f40f3f845e7df0a10cb07b16de814e574575858` |
| 39 | `def` | [OrderIso.equivClosureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/orderiso-equivclosureoperator.md) | 291 | `declaration-track:3fae7e603969241c25ec3d9dd391696c08248a3a9f016fbe8c568702bf7269a7` |
| 40 | `structure` | [LowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/loweradjoint.md) | 308 | `declaration-track:a4f35f6cd63daa03ef8627905150640186a6461a90a8f846104eb4c95ca42493` |
| 41 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/id-source-edition-2.md) | 320 | `declaration-track:d0f4f5b022b8559decd16f0c7e3dd3025e2d8aa128d9a76a97eefcc4057d32b3` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/instance-source-edition-5.md) | 326 | `declaration-track:e8ba9a663519a2679ff148ce795ecdf7381657e0fb25b448b42460811c2cf934` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/instance.md) | 333 | `declaration-track:1c8b104de8b1029c1c4342933aec45ad5beb6bd2ad99ad5b39101a289e8ab51d` |
| 44 | `theorem` | [gc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/gc.md) | 335 | `result-track:8e24f11b6b3e886fbff19cd0a0f73023ec6d0ca95e0f1aeb5bf7a0215d6d525d` |
| 45 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/ext.md) | 339 | `result-track:8cacc241e796acd0aec2da5761d86c8101ead99dc4a5f72097c110f5ebd40b7f` |
| 46 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/monotone.md) | 344 | `result-track:5cd083cbe6718fd85211d0fd93753a9d02a2f8ba8337858e431839a7a6df6238` |
| 47 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/le-closure.md) | 349 | `result-track:2d65819ebab0da911b6c8b3827567ae0680740ddd1c9662889ff14f1a780b524` |
| 48 | `def` | [closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closureoperator.md) | 361 | `declaration-track:9a2a1e118e79226179346c749aa76c5ab4f319cdaa30f84b64c9928ef67168b9` |
| 49 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/idempotent-source-edition-2.md) | 367 | `result-track:b35048c15eefcb4174d74b8e1d7b5c99b036645879786f26a25167a299b6c036` |
| 50 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/le-closure-iff-source-edition-2.md) | 370 | `result-track:7806128404ff810027f1762871e57d1d300bb825244f1cf2c1822c700ad8eefe` |
| 51 | `def` | [closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closed.md) | 380 | `declaration-track:99e81089f5c89a1c431c7f6dfac37bd3f99b3b199ceccab78200c2bfdbf63dc6` |
| 52 | `theorem` | [mem_closed_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/mem-closed-iff.md) | 382 | `result-track:f32a29476633e39e4ec75c35e2db7f55134087f5edb57ee533f5a715bfe86005` |
| 53 | `theorem` | [closure_eq_self_of_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-eq-self-of-mem-closed.md) | 385 | `result-track:6d6e762560c2cef080878043ee3f60b45b6c359853610076c54c52b1d757f86c` |
| 54 | `theorem` | [mem_closed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/mem-closed-iff-closure-le.md) | 394 | `result-track:79d216c132e2248c2fb5a40b59369d2ff24978f7700c7f41931521c1052b6d7f` |
| 55 | `theorem` | [closure_is_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-is-closed.md) | 398 | `result-track:e665ae998cee02759c1aaec92f29e686c1eb79fee4a8b6814608fcd293596d51` |
| 56 | `theorem` | [closed_eq_range_close](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closed-eq-range-close.md) | 402 | `result-track:0b7e1a31a9eb2db2fee0342d4f5b029ed1ccf1fe4095a58065a30c1f2d0ec503` |
| 57 | `def` | [toClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/toclosed.md) | 406 | `declaration-track:2c177d75a2834d475d71aafc78a6506921614b0ba69106eecd5d58f2f62ca5f7` |
| 58 | `theorem` | [closure_le_closed_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-le-closed-iff-le.md) | 410 | `result-track:eb2e6b45ebfe7b2d5f4f5a9cb230a3b0987710ed44395cdc750bd1502e8bf017` |
| 59 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-top-source-edition-2.md) | 415 | `result-track:f0249b212d480b4e22f1a9c8dc3f9f42b72f00c5ecdf8a90304e535fad9da2dd` |
| 60 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-inf-le.md) | 419 | `result-track:1b3f50e31808d0d588ae3dd67ac1cd8314af2d34263caf35fce14e81d9824c05` |
| 61 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure-le.md) | 427 | `result-track:4eeba65841547365563a126f2c8998946d2aacb24078a5a3abab7c9e6bd22926` |
| 62 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure-left-source-edition-2.md) | 430 | `result-track:7a3bd4e9fcf7a0c40d6e42ee27ae6aadcc9b9397226c3beb847b70dae5ebac44` |
| 63 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure-right-source-edition-2.md) | 433 | `result-track:b01073350730fe14d6a0cb3625a3d94a6182ab0674bb30edfcb7f6c5b8fe3450` |
| 64 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-sup-closure.md) | 436 | `result-track:4fcfa3442adc87846f6ca371dc3c6a34353f8550407f41d744ac2582ce032a47` |
| 65 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-isup-closure.md) | 445 | `result-track:3c297f7161086595d2e87914d3bbb4047cf6e92ce87d64142617c65ab6d07fab` |
| 66 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-isup-closure-source-edition-2.md) | 448 | `result-track:4ef63054d199f366c0bb942e70168750d4b3477841a0008586a91f1dd9aa7134` |
| 67 | `theorem` | [subset_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/subset-closure.md) | 459 | `result-track:6316f8687cfb3e4bf6eae738157e00cd4a6ce62bad2dedbae3d22fb6d01620de` |
| 68 | `theorem` | [notMem_of_notMem_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/notmem-of-notmem-closure.md) | 462 | `result-track:a65fe712d7c62481a31597d45cd64de3380c0730aa4826e873c46d206745a4df` |
| 69 | `theorem` | [le_iff_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/le-iff-subset.md) | 467 | `result-track:d9c239e92e61a836b7cb853c42a415156719b508277680167fb7d908b789fcd2` |
| 70 | `theorem` | [mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/mem-iff.md) | 470 | `result-track:cba153b65d2d413e615f2cd1c38136c07edf1bfd7c0d4fcacd9151e3b4b8353d` |
| 71 | `theorem` | [eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/eq-of-le.md) | 474 | `result-track:14341b57bf743a80bb7199b59a8f7d7da5c84510f3334faef78d59f2b09e0a5d` |
| 72 | `theorem` | [closure_union_closure_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-union-closure-subset.md) | 477 | `result-track:3dd82e218767528dfaa314b508653677cfa7ddb2b793865667c3fc7abc8f9edc` |
| 73 | `theorem` | [closure_union_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-union-closure-left.md) | 481 | `result-track:85e4eb845598914913f8f67377023954133b856f76cd4c5e482dd2ddb0726105` |
| 74 | `theorem` | [closure_union_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-union-closure-right.md) | 485 | `result-track:99dd705064a7c8be3837d730f9b4b2273b3fd09cd982308d147634f0adf03184` |
| 75 | `theorem` | [closure_union_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-union-closure.md) | 488 | `result-track:ca44427532087756881b5b6034dae35d94cd35c74cb624896427479f890813e8` |
| 76 | `theorem` | [closure_iUnion_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-iunion-closure.md) | 492 | `result-track:55feb95e4d8dfd4945f91ecd1b3279582013c5e39948c228fcc16b624e4ef4f2` |
| 77 | `theorem` | [closure_iUnion₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closure-iunion-closure-source-edition-2.md) | 496 | `result-track:e8431f4c2c5ebe9b726d812cfe01926b03ffb49098c6191919275e264e76923e` |
| 78 | `def` | [GaloisConnection.lowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/galoisconnection-loweradjoint.md) | 508 | `declaration-track:4cbc7a6768299e76ea4dfeea660999b398b66b9ecafebce6fbc44125e1593405` |
| 79 | `def` | [GaloisConnection.closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/galoisconnection-closureoperator.md) | 516 | `declaration-track:4df2c3da0b2cea8431e8245f51694128354eb777cc8a3ecd42795fe085959c09` |
| 80 | `def` | [ClosureOperator.gi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closureoperator-gi.md) | 521 | `declaration-track:fbce3b54d1384bed3a3dc76c9bf56d61abe5e80ee8f0bf633736886b6c2cece6` |
| 81 | `theorem` | [closureOperator_gi_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedConjBy.lean/declarations/closureoperator-gi-self.md) | 532 | `result-track:7e4a5eb830185799d72bb57d1d6d4ca5ada2ab82de2a2ea1e9db731b67e1c4f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c81fec59ec6f18a6c528b2cdb75d582bccf0735a71aa62da11c2aa0026db8278 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant9e004b28f8a5251dafe3a2900d7f9d2a814108a91c0fa937d3af754c755a9a85.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variant9e004b28f8a5251dafe3a2900d7f9d2a814108a91c0fa937d3af754c755a9a85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
