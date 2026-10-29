# Verification target: Normed Module Weak Dual Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9ec0f82265b578948182d0f3c97e192fd484d8e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9ec0f82265b578948182d0f3c97e192fd484d8e`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean.json)

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
| 1 | `instance` | [instBornology](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/instbornology.md) | 140 | `declaration-track:3c2e2a57e01a593b7cab652f647af09a9236168632f4f2cc211ee88cc325f076` |
| 2 | `theorem` | [isBounded_toStrongDual_preimage_iff_isBounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isbounded-tostrongdual-preimage-iff-isbounded.md) | 144 | `result-track:0240918a25e1a3500c4c1b2f134c34643ed4ddd7f3d74f43f5c2bd1076e439e3` |
| 3 | `theorem` | [isBounded_toWeakDual_preimage_iff_isBounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isbounded-toweakdual-preimage-iff-isbounded.md) | 149 | `result-track:3f18e41d50c8ac2940f52a1ad7b3f3ab84c5f0b79487cfd9169cfc838a517b19` |
| 4 | `theorem` | [toWeakDual_continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/toweakdual-continuous.md) | 170 | `result-track:fa036e9458435743093d06cd4c278c5bf091d45f35b2d0f2b2d8395f59a80f79` |
| 5 | `def` | [continuousLinearMapToWeakDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/continuouslinearmaptoweakdual.md) | 176 | `declaration-track:f9eeb9da2f410c07da67899af1d5895a0b82a37babdea12cfa099c35267faf67` |
| 6 | `theorem` | [dual_norm_topology_le_weak_dual_topology](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/dual-norm-topology-le-weak-dual-topology.md) | 181 | `result-track:724e8aec84361757d84290220389a526eb9ab058a27ecd2cbb4d9b42f7123a94` |
| 7 | `def` | [seminormFamily](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/seminormfamily.md) | 209 | `declaration-track:6dd30a9385866a7f693b07605f0d18c425085ad71d0f5b23947ed7db7c804efe` |
| 8 | `lemma` | [seminormFamily_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/seminormfamily-apply.md) | 212 | `result-track:95f3024b458d29bc5f0ba9f18f0b7d2639e947378f2f1722a8d36f931318cd1b` |
| 9 | `lemma` | [withSeminorms](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/withseminorms.md) | 215 | `result-track:c97b7761427e854ef4930ffd47fe285cfeeb7b7995e28e740008bb0711e4035a` |
| 10 | `theorem` | [isBounded_iff_isVonNBounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isbounded-iff-isvonnbounded.md) | 220 | `result-track:c00748909fb377a7b55d71caf9af74f3e8e3ad067b944a2a701265fd4ee663d5` |
| 11 | `theorem` | [isClosed_image_coe_of_bounded_of_closed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isclosed-image-coe-of-bounded-of-closed.md) | 241 | `result-track:3e802a43f1eabe80c7a7406b6727f5fe0adca3198ea0512e095569b71142df8b` |
| 12 | `theorem` | [isCompact_of_bounded_of_closed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/iscompact-of-bounded-of-closed.md) | 247 | `result-track:fd4084f0a9b43b751c29ab052408a6721d1da84182ad4a04ba1cb6fd0f97b1a8` |
| 13 | `theorem` | [isClosed_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isclosed-closedball.md) | 258 | `result-track:eb84fcafab2cbfebdf52c9bf82c82fab74e9a13e381d1ce849196448adf7c19a` |
| 14 | `theorem` | [isBounded_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isbounded-closedball.md) | 263 | `result-track:d5662be5b78f68eec34d70eb06448294d07f66e8ce079cfeacfb99b7982eb649` |
| 15 | `theorem` | [isBounded_closure](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isbounded-closure.md) | 269 | `result-track:127627390cd5d130426616efdce6b6c499959a8a5b6587e0abe8b479b80874be` |
| 16 | `theorem` | [isCompact_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/iscompact-closedball.md) | 277 | `result-track:b5d666a1961400c8e948cfdd6bd72d693e3ac6a39a997f81b4e1f55f74f9c057` |
| 17 | `def` | [polar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/polar.md) | 291 | `declaration-track:450a4434eb5dd038e98bb12041b923fd561dc947aa6577a5d4848f9b1bfac107` |
| 18 | `theorem` | [polar_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/polar-def.md) | 293 | `result-track:4c57f0009aabcc9b59dbd71080931d36e56e91592de92372d8ac6f6656744114` |
| 19 | `theorem` | [isClosed_polar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isclosed-polar.md) | 297 | `result-track:b230ff9ed40bf06f978af631bbb24ab869117fc7dc3ae1c6eb0f68a238bcc090` |
| 20 | `theorem` | [isBounded_polar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isbounded-polar.md) | 302 | `result-track:6014cf4d4dbb2c5ed216cd2fadfadcf9058a1e6b596f300684440a8072a94c12` |
| 21 | `theorem` | [isClosed_image_polar_of_mem_nhds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isclosed-image-polar-of-mem-nhds.md) | 308 | `result-track:17ac7e1a5d2c5a83ac52d9bc115242cfe4405d09315d853dca2b41458e8e5a27` |
| 22 | `theorem` | [Normed Module Weak Dual Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/root-grwtsk-topology-generaltopology-isboundedtostrongdualpreimageiffisb-source-edition-3.md) | 314 | `result-track:bfc5c6f13d4c89e0c6e2a4bed80aa26ff2d18031a7b504a465e25f0504fb5db3` |
| 23 | `theorem` | [isCompact_polar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/iscompact-polar.md) | 321 | `result-track:67638a32ac0a45da191cf22213b24b3d4ef767cfc73f448fc0a64246ac660bb2` |
| 24 | `lemma` | [exists_countable_separating](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/exists-countable-separating.md) | 337 | `result-track:e06a98b3cb87e9aecdea0fe6cf250cc733e602c545580472064c2729634833df` |
| 25 | `lemma` | [metrizable_of_isCompact](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/metrizable-of-iscompact.md) | 348 | `result-track:3e10cc4e851c6d9924df694e6a6111b60cba8b88d0669b92daaf800d671e2638` |
| 26 | `theorem` | [isSeqCompact_of_isBounded_of_isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isseqcompact-of-isbounded-of-isclosed.md) | 358 | `result-track:89374ee44a0ec032f6e0aa6ae115b2e9464fdf655f8285deb60f6c1c38d2e1bf` |
| 27 | `theorem` | [isSeqCompact_polar](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isseqcompact-polar.md) | 371 | `result-track:ba54f6be8d5aa56fd38da810baa9d8c1229e6b48af27bce81d1f80b1ba68267e` |
| 28 | `theorem` | [isSeqCompact_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/isseqcompact-closedball.md) | 377 | `result-track:5398d184f5d8443b1a5f120e06bc718f86dcb53a95ebfc4f51024c41446869c5` |
| 29 | `theorem` | [Normed Module Weak Dual Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/root-grwtsk-topology-generaltopology-isboundedtostrongdualpreimageiffisb-source-edition-2.md) | 397 | `result-track:b9cadbeba01a1a90984f2b5cff7c0a54e52854d3c2e8e2199de425f21a1734ec` |
| 30 | `theorem` | [continuous_of_continuous_eval_re](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/continuous-of-continuous-eval-re.md) | 408 | `result-track:8fa6d4af34b887fe67fdc4aaf56689c2b4e6b31559511d80eb35e78a95e7f2d4` |
| 31 | `def` | [extendRCLikeL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/extendrclikel.md) | 420 | `declaration-track:ae8ab3a3d3d356f8d6bbe1d946038726ccdaa23bdd264720b70050464dde4e46` |
| 32 | `lemma` | [toLinearEquiv_extendRCLikeL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/tolinearequiv-extendrclikel.md) | 428 | `result-track:000d3bb763db79aea0d342a37da39eedb12da2a821d2fae6b57b8a9fc3969a2f` |
| 33 | `lemma` | [extendRCLikeL_apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/extendrclikel-apply-apply.md) | 433 | `result-track:273e6ac09414b3a790bf8e7584d9cbc749b02fb737e39fc5188b18a05fa2c59c` |
| 34 | `lemma` | [extendRCLikeL_symm_apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/extendrclikel-symm-apply-apply.md) | 437 | `result-track:18a9877b8a177284c583af5cc933c3dd7e672d02fd971932ce1af3ee8658976c` |
| 35 | `lemma` | [re_extendRCLikeL_apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/re-extendrclikel-apply-apply.md) | 442 | `result-track:4dbba0a49bd7b38853ed02cbf6d1ef9bc929802e439e5542d56fe04794cc75ea` |
| 36 | `lemma` | [im_extendRCLikeL_apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/im-extendrclikel-apply-apply.md) | 447 | `result-track:3539644b117dd16aead328e8f645f01e68017545e4fac4f201264a5119cdeba0` |
| 37 | `lemma` | [toStrongDual_extendRCLikeL_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/tostrongdual-extendrclikel-apply.md) | 452 | `result-track:838258f7b857e1f1371aeaafab7e64cb63a821f38ec9b17fabf16ec1b130412b` |
| 38 | `lemma` | [Normed Module Weak Dual Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedModuleWeakDualNamespacedPublic.lean/declarations/root-grwtsk-topology-generaltopology-isboundedtostrongdualpreimageiffisb.md) | 457 | `result-track:0bbefe12606187562a8e67e2b847fb9a0c8c4c994b30db8336eee512ac53c813` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7060d9292ddb641e397a0adf641c38959c00dbe04593637d2e8d6bd82527059 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
