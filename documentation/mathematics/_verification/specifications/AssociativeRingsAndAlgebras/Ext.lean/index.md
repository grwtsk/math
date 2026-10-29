# Verification target: Ext

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d7a340d5bff81ea175a269616378866a9531e99",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/Ext.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/Ext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d7a340d5bff81ea175a269616378866a9531e99`.

Source path: `GRWTSK/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Ext` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-11.md) | 42 | `result-track:bb935892d6ada3a134a134702b4239a86c351bcdac0563dc84fd275aeb7d79cc` |
| 2 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-6.md) | 57 | `result-track:73038c4c2d1b07b1c19b73e8eeed08d4ab6047e5554fbf736a6c3cead22a3a9f` |
| 3 | `theorem` | [toDistrib_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/todistrib-injective.md) | 67 | `result-track:6c73ede97abb5cb4a7f8db0ba119a8fca2e78965fc1f9b3221f4a1bb10adbe35` |
| 4 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalnonassocsemiring-injective.md) | 78 | `result-track:23ad41ec4b49af221b5fd2a231f77948fed678ade0008b9eb293c4be685e481d` |
| 5 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext.md) | 82 | `result-track:12a10acd427738f6c2a421585c01fe1ab2aaea624948c1173ee1009449442e49` |
| 6 | `theorem` | [AddMonoidWithOne.ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/addmonoidwithone-ext.md) | 98 | `result-track:5924944d5d6d383cad70cfdf606c23878d626e3288d2e68c830431ec69a8587f` |
| 7 | `theorem` | [AddCommMonoidWithOne.toAddMonoidWithOne_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/addcommmonoidwithone-toaddmonoidwithone-injective.md) | 115 | `result-track:201bcce552e58a8f91636ecc10720d9fee8e9b3f0cbc40945ecdc4b39525613c` |
| 8 | `theorem` | [AddCommMonoidWithOne.ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/addcommmonoidwithone-ext.md) | 119 | `result-track:ec5ccfeded9c9594ec081777c29344ab188034d71ea37e30e73388c7219cc393` |
| 9 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-8.md) | 131 | `result-track:9010533cbae48de5878a36d603145b59b5e71de288e2a856d45692f919a2948f` |
| 10 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalnonassocsemiring-injective-source-edition-2.md) | 153 | `result-track:5f3fc0f41fd1c62d77a08fe4d02dd422ed1283935ce7928176e1e5e61b9a5b32` |
| 11 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-15.md) | 163 | `result-track:df78ea4e2442e562c73c45f91bafdaf95073ffbfed418f896762d5ddd7b1810e` |
| 12 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalnonassocsemiring-injective-source-edition-4.md) | 171 | `result-track:edeb76ac1e5795e4a789608efb858f16e25398f8a870af7b617284532e2c80ac` |
| 13 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-14.md) | 184 | `result-track:d653016697af231856263a343ae6d88704e336188cc6c7fef2960b14aebd5bc7` |
| 14 | `theorem` | [toNonUnitalSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalsemiring-injective-source-edition-3.md) | 194 | `result-track:dcdc8ecfca687b7fa292001ef3327de4303bebba182a260506ed5acceb8d1908` |
| 15 | `theorem` | [toNonUnitalNonAssocring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalnonassocring-injective.md) | 201 | `result-track:2048f7d1553043400a29afa6bdb0a5bb6e95f8a48439178a1b00e13893badd50` |
| 16 | `theorem` | [AddGroupWithOne.ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/addgroupwithone-ext.md) | 213 | `result-track:34b1367b615dfce9a4a4f6123190fba5f40fc5f38ae41a786ae4a8151cc4d3be` |
| 17 | `theorem` | [AddCommGroupWithOne.ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/addcommgroupwithone-ext.md) | 230 | `result-track:0b455b465467d53190950535ffb86511d7a70e2f38a50c845b3d623f67951e2c` |
| 18 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-13.md) | 244 | `result-track:c90cf04cc6e24da2e1da185f77a9cda70cdb514fb44db59188a5efedb74415cf` |
| 19 | `theorem` | [toNonAssocSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononassocsemiring-injective-source-edition-2.md) | 258 | `result-track:ecb13deed5343aaace91e9724b3a2dd6d1cf737ae8b3426acce6292eb50b50f8` |
| 20 | `theorem` | [toNonUnitalNonAssocring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalnonassocring-injective-source-edition-2.md) | 265 | `result-track:93612df9643cd976e70c4fcfdca10688bdc2ef79d972bbde771b67a3f83275ce` |
| 21 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-3.md) | 275 | `result-track:3bc8aff4279fede4a40a599eead0a21814312165e5abc5bdc002139a0e5fe116` |
| 22 | `theorem` | [toNonUnitalSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalsemiring-injective.md) | 290 | `result-track:4c46ae7e94e4d9f9abf2df83e2e3ac1755ea69295b281a3f52bd1dbbb7b86f88` |
| 23 | `theorem` | [toNonAssocSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononassocsemiring-injective.md) | 297 | `result-track:0edff07eb712f41c95bc884d54cf1daaadf07c4d4406ce73810532d4a9d5736a` |
| 24 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-9.md) | 309 | `result-track:97d63f2409800768649df022a253cf096114c046bb9135717144aee7cc73da21` |
| 25 | `theorem` | [toNonUnitalRing_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalring-injective.md) | 327 | `result-track:bd96489a55e9cb8c0a0943cf62b5b8a0e3af8a870f8bdca396445de091be556c` |
| 26 | `theorem` | [toNonAssocRing_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononassocring-injective.md) | 334 | `result-track:0b0269ce7a4697a2c32db7429a555219718ed1ac22ac66954e54c6335538348d` |
| 27 | `theorem` | [toSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tosemiring-injective-source-edition-2.md) | 339 | `result-track:7b674bd689dc68cb224fab9b400627b633f1ffc9a8e18a7ca4ee879186708d89` |
| 28 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalnonassocsemiring-injective-source-edition-3.md) | 351 | `result-track:9aa6df61c29df50299ba109390c512b0c1797689582a1252109a42598cf7fe9f` |
| 29 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-10.md) | 355 | `result-track:ae7623f0c16bf70e805ec7fa4bc92b214eb755f778d27bc00177dbd9027fcff3` |
| 30 | `theorem` | [toNonUnitalSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalsemiring-injective-source-edition-2.md) | 367 | `result-track:84c3ac42dc3a8a6241a5597433d8eafc4517b6c8813694cea0fd88f0dc20c47f` |
| 31 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-4.md) | 371 | `result-track:3e230ad66243b96d24d5049fa20ba4a21110a1402ef70f43c39249064b7696c8` |
| 32 | `theorem` | [toNonUnitalNonAssocRing_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalnonassocring-injective-source-edition-3.md) | 385 | `result-track:cdae032aa4e3d4b07eda2492a3d270c3e19f39577387bba759c60a3c5e633677` |
| 33 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-5.md) | 389 | `result-track:59a8771cf3b99a0b6c96543747374d5efbbd3751d9474a5e8abb5f6bf9aae187` |
| 34 | `theorem` | [toNonUnitalRing_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tononunitalring-injective-source-edition-2.md) | 401 | `result-track:ddde76385141fc522ebd9598e0720a5c2222d8f646328804c0041e05f09e3e48` |
| 35 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-7.md) | 405 | `result-track:82196d73b46e327603216b9a4bc3553e6cf841aacac4a8a36d0f3217eb77e841` |
| 36 | `theorem` | [toSemiring_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/tosemiring-injective.md) | 419 | `result-track:4ea653299d14423e0734cb64e6e9859c2646a7b927b32d9954fa1b84884486bf` |
| 37 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-2.md) | 423 | `result-track:20377bd079ffd974fed300eb38de9fa490af0cc4988f3664feeb55db7e4b819d` |
| 38 | `theorem` | [toRing_injective](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/toring-injective.md) | 435 | `result-track:270d841f4bfb9773eea1c3a5feedb990a716632cf87ca7e047f386ac9f29d836` |
| 39 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/Ext.lean/declarations/ext-source-edition-12.md) | 438 | `result-track:c2438e029afc204dce2552a7c3f6da5957233bb00ac72019a7d1ab0e0a38ecac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f4734ed86dba29187f435b248c30ba9752d2a0ed4cb5418df0bb9cf7a14ff8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean","GRWTSK/_verification/specifications/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
