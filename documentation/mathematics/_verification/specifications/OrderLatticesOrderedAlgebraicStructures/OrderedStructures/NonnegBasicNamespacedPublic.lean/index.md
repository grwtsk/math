# Verification target: Nonneg Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69ca87ee9f21424c7df9a995ca5f97dcc56ff18c",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4421a41d7097863aab1881cb8161442de9bb97889e5cbdbbb6e5dd33d4a9dd67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69ca87ee9f21424c7df9a995ca5f97dcc56ff18c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4421a41d7097863aab1881cb8161442de9bb97889e5cbdbbb6e5dd33d4a9dd67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant4421a41d7097863aab1881cb8161442de9bb97889e5cbdbbb6e5dd33d4a9dd67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/nonneg.md) | 57 | `declaration-track:ff93941dcc0c2eb276a2974cf14e95c13e636fd7b793b84346d529ced20bf627` |
| 2 | `instance` | [inhabited](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/inhabited.md) | 61 | `declaration-track:5faa55ba7e19b78b37716d890a603e92175db29dfe2cd4a11d51149ad68b7481` |
| 3 | `instance` | [zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/zero.md) | 64 | `declaration-track:371ae0d01571988f725523e240766bd44aef1df836a664f6e89ea8cedad4e0e5` |
| 4 | `theorem` | [coe_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-zero.md) | 68 | `result-track:f82b2552b3a91ecc9c4bd3eb87ac1904d84213828998b8484e96725a427815a9` |
| 5 | `theorem` | [mk_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mk-eq-zero.md) | 72 | `result-track:fa139870fc0e4c58f8004df4b0f6ae954fcf4a84453c0cc1c7d5a9bd1572a167` |
| 6 | `instance` | [add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/add.md) | 76 | `declaration-track:c3d3b32f55c0e2554d116f37f0209ee30a24e785674e0b8d6685b675e015276a` |
| 7 | `theorem` | [mk_add_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mk-add-mk.md) | 80 | `result-track:02a7e149576fa5b5b85c1d2d3fe6e13324a7563222e76424adb783c1d9547ebf` |
| 8 | `theorem` | [coe_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-add.md) | 86 | `result-track:071ee1fd5764cec12afa5a4f5e29ded64911db246ad34f49b8f673d07e66a6a2` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/instance.md) | 90 | `declaration-track:522309ffeda389b591eab0f23535d2069c2fb180179f08d6c487455c8832d972` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:e626122a0326ac12bf2ddb9c1cef78033f93f940cd9bb793474ec80dab4c1726` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 98 | `declaration-track:63d83e284ee9689472b7293690616864abb79c7d2bb113619525ddad0a273a21` |
| 12 | `instance` | [nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/nsmul.md) | 101 | `declaration-track:5ea8782c6053276266b9aa8888abedb4d859cda34b12c16129c17d13dff282da` |
| 13 | `theorem` | [nsmul_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/nsmul-mk.md) | 105 | `result-track:3369d5d2e1d8be444a668e50cb642e101b057a1c7d33e432ac0a244cd81bcd31` |
| 14 | `theorem` | [coe_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-nsmul.md) | 110 | `result-track:4478d13b93d48db48cc08e585c5b06373e2c1824429b8c5e50c4bbef5aa2a35c` |
| 15 | `instance` | [one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/one.md) | 118 | `declaration-track:de5325f51bcd67e3ad046642505efbcd53c21fa3ff2834701c0d18adfe7b890a` |
| 16 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-one.md) | 122 | `result-track:28d8a6e00f25e2585c5ad272b2ff17d464b4212fe67084b9552563de893fccfd` |
| 17 | `theorem` | [mk_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mk-eq-one.md) | 126 | `result-track:39e558d043320937f49dedd4c935c510b6b3e3c43958e17bc1796c1ac97441b8` |
| 18 | `instance` | [mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mul.md) | 136 | `declaration-track:66b4d2170bb8322e5bcea5fe6e54ede0757d3d0214c8aec469b110afa94beea4` |
| 19 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-mul.md) | 140 | `result-track:239f295171dffd398969798605db493722fc46b3d7b69e1f2381fa4ad9da0e53` |
| 20 | `theorem` | [mk_mul_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mk-mul-mk.md) | 145 | `result-track:ad66d5e7e678167adb29870a1ccd0c1196906ea6b85254a8229f5c1bf3ad08ce` |
| 21 | `instance` | [addMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/addmonoid.md) | 155 | `declaration-track:41bad4277568d098258fd9f2d91d080e662ef4d3cccbda1e730e0455efda2681` |
| 22 | `def` | [coeAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coeaddmonoidhom.md) | 160 | `declaration-track:b98e43873c16854234f5a42ae490e023f7de839322aecd757e265b20452d0a41` |
| 23 | `theorem` | [nsmul_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/nsmul-coe.md) | 166 | `result-track:c3ce799abe270bcad729a544c9bdc4031b48f15caef9bb0f8be97ba647f94dda` |
| 24 | `instance` | [addCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/addcommmonoid.md) | 176 | `declaration-track:ab69f38c355fc48e04165198f6fc0d9399c16259daefc7e94fcf47984a654da6` |
| 25 | `instance` | [addCancelCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/addcancelcommmonoid.md) | 185 | `declaration-track:40e9dc07824951b6fa204f84ec74ef177d480e4f782422e11f262dca7ee3148a` |
| 26 | `instance` | [natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/natcast.md) | 195 | `declaration-track:119212dd34833ea0b80ede706498ea0d8c96bd3e0a2fba16fa08a105d0b27d4c` |
| 27 | `theorem` | [coe_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-natcast.md) | 199 | `result-track:432fc43820dc78238b6d06249c8197d251748630c8ff618c7d4c678ab91a9b2c` |
| 28 | `theorem` | [mk_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mk-natcast.md) | 203 | `result-track:8b8c1ae3ff8f4f8e3a8851f65a8adc0ccfa04b776a604ece4a8d60e8a87ee98b` |
| 29 | `instance` | [addMonoidWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/addmonoidwithone.md) | 206 | `declaration-track:5cf1aa4d3c48676251b10d77241dbeafe78588cf889f11f75bad7768e0e30cf9` |
| 30 | `instance` | [pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/pow.md) | 218 | `declaration-track:cff1f2f3b47e0963a4e3df277b390ddc5b9e136b5e88739868f947e3314a8fdc` |
| 31 | `theorem` | [coe_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-pow.md) | 222 | `result-track:54daf8904888923320c3fb0e738bb31d607dcd4366c05dd4055152db899c9780` |
| 32 | `theorem` | [mk_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mk-pow.md) | 227 | `result-track:2315b35fa2bf64983f196483f501d73423d93712524988a7991b1b9b561f2562` |
| 33 | `instance` | [semiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/semiring.md) | 238 | `declaration-track:5340bfeca7c6ba3e9eebe3795c6cfa0f7af1d7bc94d224616e08e5435b176fd9` |
| 34 | `instance` | [monoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/monoidwithzero.md) | 243 | `declaration-track:45758cb66a7f7fb6423b3998ebd58595ccde2d3332bd6a1e47299f770d8b9994` |
| 35 | `def` | [coeRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coeringhom.md) | 246 | `declaration-track:fd96a0e2ffc62a6cb95f65117c65b2f603187ad875760cbc6d3a0397c53c8a0e` |
| 36 | `instance` | [commSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/commsemiring.md) | 260 | `declaration-track:fb3b2d40d58e1ed73c325b6665bcbd735db3e36d451a5fe093897d734eff9d31` |
| 37 | `instance` | [commMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/commmonoidwithzero.md) | 265 | `declaration-track:dfb0cc5b91a49c0ca988206a2e05168f6e3f3d9dd04a807506aff148ec93fd5f` |
| 38 | `def` | [toNonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/tononneg.md) | 273 | `declaration-track:7c6ce8cd935ae6d48a4f3c408d24b60325cadc3536b15315df6c17f8176f7917` |
| 39 | `theorem` | [coe_toNonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/coe-tononneg.md) | 277 | `result-track:a8e09505766f0bdc8d2b6d481004b6062e3fdfc46eb6a7d179d6cecdd4bc4e98` |
| 40 | `theorem` | [toNonneg_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/tononneg-of-nonneg.md) | 281 | `result-track:01baea73e74e161746833d360391cae069c5245930c9ad694f56f76bd507f7e9` |
| 41 | `theorem` | [toNonneg_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/tononneg-coe.md) | 284 | `result-track:404407b7012322881a3d44728ffdfe543d4ff039a5d2f52bf57e5f042b12ffd5` |
| 42 | `theorem` | [toNonneg_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/tononneg-le.md) | 288 | `result-track:2671aa6d80a5806463772836963238722abb0342e0a29b74d51950a88f9629d2` |
| 43 | `instance` | [sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/sub.md) | 292 | `declaration-track:ee330252c20a0d8b47f76694211ff3f2426d84f99d24c4872637af0baf37b24c` |
| 44 | `theorem` | [mk_sub_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/mk-sub-mk.md) | 296 | `result-track:ec83649200f0b1e7bf54eb6876caf3ece11ff919b10810096e6869f58c931a50` |
| 45 | `theorem` | [toNonneg_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicNamespacedPublic.lean/declarations/tononneg-lt.md) | 306 | `result-track:210150ad28af36f57cec83555980f239d08e34bd8fb18562b66f2748abaac730` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2925ca2a986898c9845d1ff94334b90834f15f3c71bc95e94470edc60818443a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4421a41d7097863aab1881cb8161442de9bb97889e5cbdbbb6e5dd33d4a9dd67.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variant4421a41d7097863aab1881cb8161442de9bb97889e5cbdbbb6e5dd33d4a9dd67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
