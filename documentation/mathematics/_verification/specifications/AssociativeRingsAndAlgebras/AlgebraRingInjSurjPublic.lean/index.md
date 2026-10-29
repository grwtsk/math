# Verification target: Algebra Ring Inj Surj Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "560da9c3b7abcf55ff42c2337f8bb163f35f7f68",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `560da9c3b7abcf55ff42c2337f8bb163f35f7f68`.

Source path: `GRWTSK/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leftDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/leftdistribclass.md) | 38 | `result-track:0c9f33cdb6d3af4e45ef8a72e50dc86f6c0d74244006a2d6add102087263b0d9` |
| 2 | `theorem` | [rightDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/rightdistribclass.md) | 43 | `result-track:59b80e335534a9f3cd8a7ba25037cf0a4c74ba1c2e70c7165975b19b6d9fb4a4` |
| 3 | `abbrev` | [distrib](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/distrib-source-edition-2.md) | 52 | `declaration-track:d6269455a5dafcbd8fb3da82f95437b144d8ff8121e0ca30a8a37c221a4f61f3` |
| 4 | `abbrev` | [hasDistribNeg](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/hasdistribneg-source-edition-2.md) | 60 | `declaration-track:419a5e4767df1f2b0662648456424ece86f3e5760d2c72355fbe757ca1d015a9` |
| 5 | `abbrev` | [addMonoidWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addmonoidwithone.md) | 70 | `declaration-track:6979d4ab6b6ab8623bd65de60b432ad3c3b153e2cdbf2f0e6d69e2d2f230a058` |
| 6 | `abbrev` | [addCommMonoidWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addcommmonoidwithone.md) | 82 | `declaration-track:537fb1b385d95157af858ae92ca2091ce513f5b2a6434be65791bcfc657edd55` |
| 7 | `abbrev` | [addGroupWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addgroupwithone.md) | 92 | `declaration-track:78592e3e40debf650f8bec3906f761371b7a5a61dc0637d08a81dadacc545b0b` |
| 8 | `abbrev` | [addCommGroupWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addcommgroupwithone.md) | 107 | `declaration-track:71471b0af2cdf4d4570c3b7e37db83f7080cc0dc3440b3d6a5d65c9c48cee5de` |
| 9 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassocsemiring-source-edition-2.md) | 118 | `declaration-track:b3f7d40d19bf11bf5d84b16fef663dda25bf46d0cb88183dab45ac27649706c1` |
| 10 | `abbrev` | [nonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalsemiring-source-edition-2.md) | 127 | `declaration-track:bd404cdbc7193b0701a369c0e96eb08be4e2371f0adb2aa1d39bfe8728034fe7` |
| 11 | `abbrev` | [nonAssocSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassocsemiring.md) | 136 | `declaration-track:36b3ccc7e31de925c440243dd5f87ce0006e95ebb83b961e20571c762988de52` |
| 12 | `abbrev` | [semiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/semiring-source-edition-2.md) | 146 | `declaration-track:22ea9f99bf4fea84678b31f2e618f17ae7abe7186be8701d66600ce59b21e3ea` |
| 13 | `abbrev` | [nonUnitalNonAssocRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassocring.md) | 156 | `declaration-track:cb1f4e019fc96daa9b39b8fd13f6c34fa74b50503d9c6761f8e6402041bdff63` |
| 14 | `abbrev` | [nonUnitalRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalring-source-edition-2.md) | 166 | `declaration-track:b471bb640a41fb4efeae828b6f7801b54620b805796623c252d2f5defbd1ee62` |
| 15 | `abbrev` | [nonAssocRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassocring-source-edition-2.md) | 176 | `declaration-track:82fac5a13618e87e39a3e09031d38ec3e5d3c92d64e85ca1cbc338e42402e7ed` |
| 16 | `abbrev` | [ring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/ring.md) | 188 | `declaration-track:20e09d3d322cf11f7c7ead9b5c54ad62f65f81b2ad125136a5d3f866f3fa8104` |
| 17 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassoccommsemiring-source-edition-2.md) | 202 | `declaration-track:f874362d35d4289dd607d2f54b30da9f0816580f6334d2ffc07799d445cab49a` |
| 18 | `abbrev` | [nonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalcommsemiring.md) | 211 | `declaration-track:459f5362ffef6722b1d54fa268b54b55f0a93f1394bf25e6933924a730c7b237` |
| 19 | `abbrev` | [nonAssocCommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassoccommsemiring.md) | 220 | `declaration-track:4536654a6b2ce3faf611fd3513e14e872f6bbf69c59916367539cac0092a28cc` |
| 20 | `abbrev` | [commSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/commsemiring.md) | 229 | `declaration-track:0d289f6b0ace35ad6221f69d53c0fbefd334a68550f44c5d76405140043a06a8` |
| 21 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassoccommring.md) | 239 | `declaration-track:aa6dd51caa6248039ace179338afd744bee9a039ce8e3ee7efe9cff818dc481a` |
| 22 | `abbrev` | [nonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalcommring.md) | 249 | `declaration-track:09972ae759b38a487bfe60bd8bbc6bd1f8b9ee6a1bf7c0a4552e2577284e2273` |
| 23 | `abbrev` | [nonAssocCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassoccommring.md) | 259 | `declaration-track:31f21cb23f3d93939770fa62e0969d56c95e650a0bca0616178e49266f399b90` |
| 24 | `abbrev` | [commRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/commring.md) | 270 | `declaration-track:305205a029f2244c6ea00bad07c56a071d9eee4bc90039a4b045aa9ecec12a51` |
| 25 | `theorem` | [leftDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/leftdistribclass-source-edition-2.md) | 288 | `result-track:f234f9493c104cb7c00304495a1d8af7f2acc8675c5d5d1304c74189ab33b379` |
| 26 | `theorem` | [rightDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/rightdistribclass-source-edition-2.md) | 293 | `result-track:97a01f5a6986c004ad303b8594b581f7633ef3f3290cad163b78f586722d053a` |
| 27 | `abbrev` | [distrib](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/distrib.md) | 299 | `declaration-track:2bb81ad31fdf5233dc70cca6319150937d58cf59da3d681c4933f50c694daa97` |
| 28 | `abbrev` | [hasDistribNeg](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/hasdistribneg.md) | 310 | `declaration-track:2c65b7d2733b1c0d0f107338ace3b8fe8688442d0445fc7c22a3acbd0218bfe1` |
| 29 | `abbrev` | [addMonoidWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addmonoidwithone-source-edition-2.md) | 320 | `declaration-track:b952aac912ee27881eb60e5b6ce34eeb718d1f53b2f137d3c31054066f9fc84d` |
| 30 | `abbrev` | [addCommMonoidWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addcommmonoidwithone-source-edition-2.md) | 331 | `declaration-track:6b3edf6d17e74120d9ef864d64dd9411114421535f24e035b621f490d62bb4b8` |
| 31 | `abbrev` | [addGroupWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addgroupwithone-source-edition-2.md) | 340 | `declaration-track:7e8603df4a7367beda4ff860b5a2b8a27ce98e11d06342b7ee830632e09de0e4` |
| 32 | `abbrev` | [addCommGroupWithOne](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addcommgroupwithone-source-edition-2.md) | 355 | `declaration-track:d8968b23f78eb79811b319a27b5cae99b96713aff05f0209f40cfcbebdc90828` |
| 33 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassocsemiring.md) | 365 | `declaration-track:3ad9c2cfe1e8dc9e5a38a2ab91d1d6459e63f22a0ae06de7cca837feb4e76adf` |
| 34 | `abbrev` | [nonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalsemiring.md) | 374 | `declaration-track:1c28f254883016ce06e01732c973f767bade3bb30ade7acec42a1a8b738ccfde` |
| 35 | `abbrev` | [nonAssocSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassocsemiring-source-edition-2.md) | 382 | `declaration-track:6f8abb611b5f58d61460b253c1dff6c2775e85f9eadff0d92b2f4364ca17e288` |
| 36 | `abbrev` | [semiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/semiring.md) | 392 | `declaration-track:1ce44d8ceb2242af57a1e48d7f323b3d40fbdcc8482f111a88c698f7ec38a03a` |
| 37 | `abbrev` | [nonUnitalNonAssocRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassocring-source-edition-2.md) | 402 | `declaration-track:f4df975921e49b693e855508a78fc05829641ebf6ba5c0fdb921297332fb914c` |
| 38 | `abbrev` | [nonUnitalRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalring.md) | 412 | `declaration-track:6af4d5d9d0be37ac47e047c579856543abe4c7078870e38f7346cae63a383b28` |
| 39 | `abbrev` | [nonAssocRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassocring.md) | 422 | `declaration-track:69f8a18fb515045a6f55b179e36c3e0a86c70bcc900c02810dd279f0a5e2bfd5` |
| 40 | `abbrev` | [ring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/ring-source-edition-2.md) | 433 | `declaration-track:3ebe443dfb36fd8e5a9e1b42c36cd16c81d09f56f0f07f3117f418402d10e377` |
| 41 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassoccommsemiring.md) | 445 | `declaration-track:3411c6f7182a46e11b3b1a70334a15a251509de08d2acfdb35848948b1fe0269` |
| 42 | `abbrev` | [nonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalcommsemiring-source-edition-2.md) | 453 | `declaration-track:ab9496cb8873ba721376a7530c042bfcffb1cdb3759f04eee869d634ee470086` |
| 43 | `abbrev` | [nonAssocCommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassoccommsemiring-source-edition-2.md) | 461 | `declaration-track:91ae8f6a053dceb394307b85c684c972b2868bce0de41a33076d41318b40b261` |
| 44 | `abbrev` | [commSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/commsemiring-source-edition-2.md) | 470 | `declaration-track:33b4cbcc5683bbf6d0e7ec51f4d38fce481dd7e5503553e2a7e3366d18ec9bba` |
| 45 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalnonassoccommring-source-edition-2.md) | 479 | `declaration-track:c1a591fc013c0fbfec1a937187bf6dccfc6168744c38a54588f8b7867b485bcd` |
| 46 | `abbrev` | [nonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonunitalcommring-source-edition-2.md) | 489 | `declaration-track:c4b247222e868118490fbf2ec1dad086544911cde1481ec23132a89532a03d53` |
| 47 | `abbrev` | [nonAssocCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/nonassoccommring-source-edition-2.md) | 499 | `declaration-track:7a1466fd929c98e304b1b94f7495e71485f14f79dbefb5c36dbd22a58372aa75` |
| 48 | `abbrev` | [commRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/commring-source-edition-2.md) | 509 | `declaration-track:870f84cdcbbaa2105d28827ae13a5a6cc2da8f818104cdf5a02d6992cd1d0567` |
| 49 | `instance` | [AddOpposite.instHasDistribNeg](../../../../AssociativeRingsAndAlgebras/AlgebraRingInjSurjPublic.lean/declarations/addopposite-insthasdistribneg.md) | 522 | `declaration-track:3bd8cefe5ff274160906f7f771903bafe810fea714b682ff74b778a873e6b6b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12dc7d9279a20340a7370ece1483c383ab20e8f27754f13a378d6c00f7b658ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean","GRWTSK/_verification/specifications/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
