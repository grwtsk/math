# Verification target: Comp Haus Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fd3d3aeaa1a1ab4ad723a28aca67767f4cd13d1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fd3d3aeaa1a1ab4ad723a28aca67767f4cd13d1`.

Source path: `GRWTSK/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompHaus](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/comphaus.md) | 37 | `declaration-track:8abfdbc7445eac03ade6b2d57efd6b3a05daa814c136345d86401b0c5fefd75c` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:3cd62cf96d750d7e6296c37c40f1abfd3c38af35f2dc77d97131541c92ea72da` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-10.md) | 53 | `declaration-track:cefa97fb8894b634ce1a070ba7cde0001d8fd5c150bad9c55520c40f23379fb5` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-3.md) | 56 | `declaration-track:41e55670e26f2fffb8b97623578fc35a653a65baae036416b196b2928bbfb0d2` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:480fcc6ce7ce8a6365c8a8adbcf3adee00953850e773512a412af7055fd1816d` |
| 6 | `instance` | [category](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/category.md) | 62 | `declaration-track:ab0e400dd0bddcfdd18f52723ecaeceeb3f7dc9ccb4de4d824086f43e8405604` |
| 7 | `instance` | [concreteCategory](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/concretecategory.md) | 67 | `declaration-track:24e6348b0c31a0d36479b6c68da777963efefc7155540ef272d33f903f2dbeaa` |
| 8 | `def` | [of](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/of.md) | 86 | `declaration-track:88a3e2b85f601bf4446c9944bf2d5755cbeeb2563b29e3a0f93a49fe5e982eef` |
| 9 | `theorem` | [coe_of](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/coe-of.md) | 94 | `result-track:66276c3d2b4c00a75393f3739dfe4656ce87dfde8cbadb93cdb37d839cb78975` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-7.md) | 100 | `declaration-track:51494f9115480204f5549add25d7db6e0545723596f26c514014fc9d5c726a2a` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-9.md) | 104 | `declaration-track:b3ed7c9cec16f57b85de0cfd19bb7142b2b3209abbaed2ffe7254f1a8ecc0631` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-5.md) | 108 | `declaration-track:49e5d714835e48f9718f61ad52c60273e7b5d674adfea09e1f922f6715becc82` |
| 13 | `theorem` | [isClosedMap](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/isclosedmap.md) | 112 | `result-track:b49233619c1ac04234e3b15753db12b6ffb4bd716c0c740a1e8a15a8dba2fa0d` |
| 14 | `theorem` | [isIso_of_bijective](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/isiso-of-bijective.md) | 118 | `result-track:b11af3b908ce041b6091cbb964d322dfec5f2c17379cf8a35e6af9d832950c21` |
| 15 | `def` | [isoOfBijective](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/isoofbijective.md) | 135 | `declaration-track:06a140101c7942566667f89445a6527694ffae9025600a93f48847f88d4f3b4d` |
| 16 | `def` | [isoOfHomeo](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/isoofhomeo.md) | 144 | `declaration-track:c9bc2e00abdb61e2134b63a7e2de0efe61b65911b05b32e17c9dc2b685827701` |
| 17 | `def` | [homeoOfIso](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/homeoofiso.md) | 156 | `declaration-track:54f29c305b4f4406e8c49a71d97c5be33eeafb0e1d040107485db23c60e2fa33` |
| 18 | `def` | [isoEquivHomeo](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/isoequivhomeo.md) | 167 | `declaration-track:fd6e1a5c69a68080c73003e0d13c95c72394fb1406d27e85b14c6d239a9a363e` |
| 19 | `def` | [compHausToTop](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/comphaustotop.md) | 182 | `declaration-track:2466160b14570b3a9f9be0348ac0e867b3a89325dcfeb4583043dde42cc9d1c3` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance.md) | 187 | `declaration-track:2ab7469d834259d89b1e2ba98c6bce472b1614dc8938d00f618d5691a959c539` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-11.md) | 190 | `declaration-track:d777d39a3937c0f8eb564a5acba8c1dd40af5d3e88a483fc8ed7359a2435d873` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-8.md) | 194 | `declaration-track:6a48d34f408f73d2d841691dd7ff6a539b9f118e4f6e5153280e5c8aa8494dbf` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/instance-source-edition-6.md) | 198 | `declaration-track:4d421887a4221c1742008a8b77d78be23eba42a67dc4871d60ea4d5d14c42be2` |
| 24 | `instance` | [CompHaus.forget_reflectsIsomorphisms](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/comphaus-forget-reflectsisomorphisms.md) | 201 | `declaration-track:b9e9f3ac01877ef8c4b26d2460e21b865cbef2041e7fa1e70c49be4150b05cab` |
| 25 | `def` | [stoneCechObj](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/stonecechobj.md) | 210 | `declaration-track:e1463d2f340766e203784822ae27d99c539cdd1593f2b6007b7024af2d05a270` |
| 26 | `def` | [stoneCechEquivalence](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/stonecechequivalence.md) | 218 | `declaration-track:81f9c1da7af685ee69df8f4fb6f3be12923aaa5e446dec7782709c7d203e86f0` |
| 27 | `def` | [topToCompHaus](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/toptocomphaus.md) | 247 | `declaration-track:2067d5bd8f8f749daf448baf8df12f19dacb2e0c54f6ebbcc17f2730b50440a7` |
| 28 | `theorem` | [topToCompHaus_obj](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/toptocomphaus-obj.md) | 252 | `result-track:36a8ff58521f4ff600fabe4221040879a66099e64c19e162ff23f47d1e850c45` |
| 29 | `instance` | [compHausToTop.reflective](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/comphaustotop-reflective.md) | 259 | `declaration-track:fd249ae187203fb5315f73f311cfec78a23f1552d95a788762fdf207a108da71` |
| 30 | `instance` | [compHausToTop.createsLimits](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/comphaustotop-createslimits.md) | 264 | `declaration-track:31a12e178f859bbcf0d8b15d9e2ec5c86b9309370a3713f3e6ce5e9e7d814d63` |
| 31 | `instance` | [CompHaus.hasLimits](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/comphaus-haslimits.md) | 269 | `declaration-track:3b415f27e969feb15ad7156d63bd48a738f82e5651dc07a06d2e67f05b49b21b` |
| 32 | `instance` | [CompHaus.hasColimits](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/comphaus-hascolimits.md) | 274 | `declaration-track:335a40a53ca51909d9802beb8da7d7da26f43e7ca0a3a8abefb6af55d31d2c60` |
| 33 | `def` | [limitCone](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/limitcone.md) | 283 | `declaration-track:3946c8f22c4d63bcd46eb354b1d5b87d652994650051554c47d4f791214d8e78` |
| 34 | `def` | [limitConeIsLimit](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/limitconeislimit.md) | 321 | `declaration-track:a85a72127c50db3479f249de2ead000be0fbcfdd1cc254cf0c8944d1a7ce36b4` |
| 35 | `theorem` | [epi_iff_surjective](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/epi-iff-surjective.md) | 330 | `result-track:339bd2857578fbfa7b72854c8178fdaf3ebaa022f0f245f0b6578a45259f986c` |
| 36 | `theorem` | [mono_iff_injective](../../../../GeneralTopology/CompHausBasicSourceEdition1.lean/declarations/mono-iff-injective.md) | 377 | `result-track:f5a1951b79749633cd7257e0d8f753d43bf4a169f108cc71716490dd89efb2dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=998f454aa3d3354f60e0c922dad685ab294486229f1fe2d1130f13660aea178f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean","GRWTSK/_verification/specifications/Topology/Basic/Variant86246918bb0c278ec9fbc2a7308bae9c952aed5640a39815a1312695891faef6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
