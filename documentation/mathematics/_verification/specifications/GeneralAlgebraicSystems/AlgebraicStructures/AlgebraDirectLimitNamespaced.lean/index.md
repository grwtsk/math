# Verification target: Algebra Direct Limit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b9f0d236c2253f0260e5e04c2eec13a1a259f95",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b9f0d236c2253f0260e5e04c2eec13a1a259f95`.

Source path: `GRWTSK/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DirectedSystem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directedsystem-source-edition-2.md) | 56 | `declaration-track:dd253362dde088897b1f4d5badb956b54d2b4aa25ab01523ccd887420f169294` |
| 2 | `theorem` | [DirectedSystem.map_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directedsystem-map-self.md) | 64 | `result-track:0248577fc7e06d7e807e5c0c31b2b5acb58af3b1c9d382273a58484f39f7062d` |
| 3 | `theorem` | [DirectedSystem.map_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directedsystem-map-map.md) | 66 | `result-track:6c33ebc25b08e8dfb5ca03b6515054f79cb1f9eacdd924b679a597559260ca29` |
| 4 | `theorem` | [DirectedSystem.map_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directedsystem-map-self-source-edition-2.md) | 80 | `result-track:70d5559be38788e84db044449617ac65da64192b953fcf518f34f800bffd791c` |
| 5 | `theorem` | [DirectedSystem.map_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directedsystem-map-map-source-edition-2.md) | 87 | `result-track:77fa47e93e86703361d19a2bcf4b0118dbf7c3d5c2ab3e521258ea614418d5d7` |
| 6 | `def` | [DirectLimit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directlimit-source-edition-2.md) | 95 | `declaration-track:c543c78a365c94418a06bb4dc04633361654cfac5430dda04c6a2d9a417bafff` |
| 7 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/addcommgroup.md) | 105 | `declaration-track:619bf433a61c4f279e79711030c845ec4eb9ea6178aae86d0dc153d578d73ff8` |
| 8 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/module.md) | 108 | `declaration-track:c44700979feca06c03badba50f53639824862b0550d970d8a4514d1653f7f12d` |
| 9 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/inhabited.md) | 111 | `declaration-track:9ad09266f6aaf6fe47a6ae023608266809854fc55b864c451c014a4220bc3bac` |
| 10 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of.md) | 117 | `declaration-track:8d3fb31470b022a045ae8301fd9baaec6555dee707c8264e267d8acd6653a132` |
| 11 | `theorem` | [of_f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-f.md) | 124 | `result-track:046f6aa42cf457a775f6175047597f4a9602c01a73bd6a4c7a66fd8ee8f575b8` |
| 12 | `theorem` | [exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/exists-of-source-edition-2.md) | 130 | `result-track:d90378b72a40bf7dec1104c60f2179da19fd97d406055a640703a0d5d2cc4217` |
| 13 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/induction-on-source-edition-3.md) | 144 | `result-track:d187bed493268f0907bef64c84c0be63613feb3f9d93a934d3a63230aa572942` |
| 14 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift.md) | 159 | `declaration-track:62493c0594c5d0802cd34a943cd9aeddbb2391573f845ebab6f6cc36b1b2f2ad` |
| 15 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-of-source-edition-3.md) | 168 | `result-track:ccaccb7bb01da31e88bdd8a2731ef098f4bfe8197535ea8ae3bf348318157590` |
| 16 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-unique.md) | 172 | `result-track:2cb37c1437565540c6866056feabedce4e857735dadbe33d8b3fd29fab922d05` |
| 17 | `def` | [totalize](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/totalize.md) | 188 | `declaration-track:5c125badd6d47fae5360bc52645a725638e36a2f51a7d50e5315e6c14ce36799` |
| 18 | `theorem` | [totalize_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/totalize-of-le.md) | 194 | `result-track:6a54c85d58428c1f3f71f54d0653d51a0eb6f4dea9ef657f9ed3622f11bd9e5f` |
| 19 | `theorem` | [totalize_of_not_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/totalize-of-not-le.md) | 198 | `result-track:26e98b7d6a8f8c8e1cf033a9ea8056fe8493ff3ad2f4e99c4f31bd24c6c30c85` |
| 20 | `theorem` | [toModule_totalize_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/tomodule-totalize-of-le.md) | 208 | `result-track:b637510bed23611cbf0c9112f1ead06ec58670c54e92e6b5a0f11c89da667d4f` |
| 21 | `theorem` | [of.zero_exact_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-zero-exact-aux-source-edition-2.md) | 220 | `result-track:c8c71084d6db99ba9aaca1fc05e71ef209e8a391abb2710cb54b25b711dc7039` |
| 22 | `theorem` | [of.zero_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-zero-exact-source-edition-2.md) | 262 | `result-track:48a42b0c90c72d4b81cf9426f00b6854eff9854f43b81451085bd15b8e268e8a` |
| 23 | `def` | [DirectLimit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directlimit.md) | 285 | `declaration-track:8b28470ec7b2d956471c967876f08c8b04c5368dfa26d4519753b369b8615c69` |
| 24 | `theorem` | [directedSystem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directedsystem.md) | 293 | `result-track:8063b8c248e123c3d67b9cada162dd3470af02cbfb34def2954875edbf2194ae` |
| 25 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/instance-source-edition-2.md) | 300 | `declaration-track:27e0720da3c2224d1cb1502247dbf22d9bea5348d8e510e0aead42d842d21c48` |
| 26 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/instance.md) | 303 | `declaration-track:04ccdbf4762f5a7d5839d6d88694d866a85318e216a31d5cfd62ff85083edca3` |
| 27 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-source-edition-2.md) | 307 | `declaration-track:acf0636c187460ac6473b1da258b32c646cc83545cd5633d25167d4b1c2596c9` |
| 28 | `theorem` | [of_f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-f-source-edition-3.md) | 314 | `result-track:d0c2d3ff54a1540c073b081646984a572ec13ee4ac70b1895cd5266f5160fef9` |
| 29 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/induction-on.md) | 319 | `result-track:11054b468d36486758af059941463ad2c643e781ce8d5270fd95d1380894db2a` |
| 30 | `theorem` | [of.zero_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-zero-exact-source-edition-3.md) | 326 | `result-track:e03c9e4701254f797e145e33797621587b601a4cf7a993018bf8d9c1cf3e950c` |
| 31 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-source-edition-2.md) | 342 | `declaration-track:66714cf05e17a8d01ea1c60a0994765b4c6d951e243c48031e203f631a72ffc8` |
| 32 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-of.md) | 350 | `result-track:140fd3df75b7020612e6c4999866e34e6b377f8b50ab230c46d6f847660f788a` |
| 33 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-unique-source-edition-2.md) | 354 | `result-track:9d2b26e28f4d90a78e77b68508bf183f3b8dc6833642141797c419928ddf09d1` |
| 34 | `def` | [DirectLimit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/directlimit-source-edition-3.md) | 374 | `declaration-track:ddbf60d8d935824804b59d438ce9f061b7acfc0f4713b8b3c4f44bfaff7ddcb8` |
| 35 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/commring.md) | 386 | `declaration-track:cb45d091f63263b7b42ab4f251f55c1eabee4ca9b155541d78667c931efb518c` |
| 36 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/ring.md) | 389 | `declaration-track:67c5f8c830b68e8f23e048b4d709e150354540addf05a82b72f9e961bf3bc9b2` |
| 37 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/zero.md) | 393 | `declaration-track:c53ae8e206731b2023da030efdf49eeee378617d064510134613b0cb462874a4` |
| 38 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/instance-source-edition-3.md) | 397 | `declaration-track:4fec5724f1f87ae35f4f442c89e2da76da345df4765fe49c009f0d0dd670da87` |
| 39 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-source-edition-3.md) | 401 | `declaration-track:ca06da4924454ca5b0aad90d24f79b67054efde10e2c0eac2d54c43e45c1e67b` |
| 40 | `theorem` | [of_f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-f-source-edition-2.md) | 414 | `result-track:4765669f973d316184b0e65a0dbbda7e84a420306b323be623254f28816a2795` |
| 41 | `theorem` | [exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/exists-of.md) | 420 | `result-track:9cb796da63538086376860c51835dfbd55baf26ff3cf18ebf0d816a49d4d0df3` |
| 42 | `theorem` | [Polynomial.exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/polynomial-exists-of.md) | 455 | `result-track:3b1c1106cacac7ffdf83a85db8c09b91956c4de4bfac8044a86c5994c993e201` |
| 43 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/induction-on-source-edition-2.md) | 475 | `result-track:9071e2072f60e9d80e7d198742d5bd16d760e800288210097a57e711188da521` |
| 44 | `theorem` | [of.zero_exact_aux2](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-zero-exact-aux2.md) | 491 | `result-track:1ddcec975fc10d8e90c91035c24ed44096bc3da2294af575f16156dd91dd2a95` |
| 45 | `theorem` | [of.zero_exact_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-zero-exact-aux.md) | 522 | `result-track:4f38dca7e23ccc640f980bc11fd040d09bd262dfdf37b8e685e6a595eaeea154` |
| 46 | `theorem` | [of.zero_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-zero-exact.md) | 621 | `result-track:004d3b9653acbf00f8b0c2580e4b42b04f76c1b679f92855247a97a67866dee8` |
| 47 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/of-injective.md) | 635 | `result-track:ec23ae1735085b4ee58071c08bd9473e58dff828f296c67048de7dab184c61d0` |
| 48 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-source-edition-3.md) | 663 | `declaration-track:c2b7ef757f4f92715a4768bf4a3dd9cd58af98438c866b7b913427fdf2523b20` |
| 49 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-of-source-edition-2.md) | 682 | `result-track:ca3b1f70bc5b0b6f6d741bbb41b5fb38c1ccb6f0d6c35a0c0f5d03972ae2c534` |
| 50 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/lift-unique-source-edition-3.md) | 686 | `result-track:a11f8f22eaf0daf42013483c1c1f956dc0b9fbb60233528e380d6fb9c4d56b03` |
| 51 | `instance` | [nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/nontrivial.md) | 707 | `declaration-track:9ec7b35ee43c3342288965b94872021d90acd9f88521220633c2d356fea9326a` |
| 52 | `theorem` | [exists_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/exists-inv.md) | 718 | `result-track:62a78874ceae30623b8a42653565d2a028eb77d0ce856e3f091970ad0d54e227` |
| 53 | `def` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/inv.md) | 731 | `declaration-track:b5ee24d0f97235a77703037398d27a19c9d068ce2c67dbd7d522548c82125c78` |
| 54 | `theorem` | [mul_inv_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/mul-inv-cancel.md) | 735 | `result-track:91b0d6b948162438e245c5be5fd1db0ae80553961a68d01f330da0e8d0a2aaa4` |
| 55 | `theorem` | [inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/inv-mul-cancel.md) | 739 | `result-track:90950ebb238262343ad244da124dbe2aa6540aa53c4e73a85bdccef1691c0c44` |
| 56 | `def` | [field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraDirectLimitNamespaced.lean/declarations/field.md) | 748 | `declaration-track:6a0a13316ba608566c5d510f7c307085b04d97869cc611a84dcc418bb026be0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9d5311b163986253cec6365b6540e6f04d110611a0adfa107e086d992bf2021 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean","GRWTSK/_verification/specifications/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
