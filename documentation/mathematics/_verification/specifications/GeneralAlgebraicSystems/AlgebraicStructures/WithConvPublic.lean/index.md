# Verification target: With Conv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "131bea49a69748ae86d0b99a8296a905d132fdef",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `131bea49a69748ae86d0b99a8296a905d132fdef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean.json)

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
| 1 | `structure` | [WithConv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/withconv.md) | 29 | `declaration-track:88e3b8438242934314a5b40d7d171621475cb18edd64870e144ec93df054275b` |
| 2 | `def` | [delabToConv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/delabtoconv.md) | 38 | `declaration-track:c425752c2fbf24a2432cc83e1bccd3025b82a31d99e838249c67f37cbc2d92f6` |
| 3 | `lemma` | [ofConv_toConv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-toconv.md) | 42 | `result-track:c8020aad01e512ccfb1613548c739022d111c74029935af494b27c53cdf37b77` |
| 4 | `lemma` | [toConv_ofConv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-ofconv.md) | 43 | `result-track:475fe91462f08691123e2e5d8e8ef4fb342a607c18615cb334c3eadd7ea0fdb1` |
| 5 | `lemma` | [ofConv_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-surjective.md) | 45 | `result-track:fc121c10f29d8fd94e36a7bbbb77301b827cd59b1677d164e15a5d5962d5eaa7` |
| 6 | `lemma` | [toConv_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-surjective.md) | 48 | `result-track:d8bd4cb596b84dbf1ee1cf3526619039aec545f9063c89b52dfa9a5c8e053710` |
| 7 | `lemma` | [ofConv_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-injective.md) | 51 | `result-track:585dd9138d93a6f5ccfc2464d4bebd19d50f98ab0331f74423ed739913374234` |
| 8 | `lemma` | [toConv_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-injective.md) | 54 | `result-track:05fe9a69297b6ab1ea9a05f978eb117599cf779b56b90d9f09d7d2ed171cea9a` |
| 9 | `lemma` | [ofConv_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-bijective.md) | 57 | `result-track:a93f262f95591c1b1f18fe645081d87384c90e8c954c18e531c86dc5f266ee98` |
| 10 | `lemma` | [toConv_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-bijective.md) | 58 | `result-track:2dd9badbd25402bd76b4c025ff0a4b8f49cecaeb830c98a1b478d30a82a1c755` |
| 11 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-5.md) | 60 | `declaration-track:5e751e5ea4e4f62871f4d441a0fad596c71beeb331f28ffee535107a2e05ad0d` |
| 12 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ext.md) | 62 | `result-track:d405105a94e254cccd51054fcce3e920e737295270430fd1f0b2afba78fc1fff` |
| 13 | `def` | [equiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/equiv.md) | 67 | `declaration-track:0d02d169986ad389a6c3a306db87029f2dfd21f63eebca6d7bc15816119d2f1a` |
| 14 | `lemma` | [equiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/equiv-apply.md) | 73 | `result-track:98e02f29bc4b3bb5c4e536773660122a1403303dc31b7c6adc167e986a6b5880` |
| 15 | `lemma` | [symm_equiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/symm-equiv-apply.md) | 74 | `result-track:16eec64737abf62847fca1bc2aa2affd89028393aca201b9eeffdabfb38cfcf9` |
| 16 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-8.md) | 76 | `declaration-track:78328b41bf5a222c2a979c7efb8a6067c08366b11bf65733955f0b54b751b271` |
| 17 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-2.md) | 77 | `declaration-track:19351227abb8a3f4af45c468ee84eda8b39c4a386995562947fae137ae519a7e` |
| 18 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-6.md) | 78 | `declaration-track:71943341d4633bb9e1a00e3d1120796882eb35080ec30ce5d849be0bf691a498` |
| 19 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-9.md) | 79 | `declaration-track:7e13920c31cde179b1d18093e3b0d0753852a59ae21a198d2f913d14d5f2c040` |
| 20 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-3.md) | 80 | `declaration-track:5740ba705ac929b2fd0f6b4a5bed246dcd96a6982f9289cea8178e204ff26cdc` |
| 21 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-4.md) | 81 | `declaration-track:5acded87485d7222e8fc7e8c6bfbd4f2dcabe7f2f011a45ec89a5b259057f29f` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-10.md) | 82 | `declaration-track:b7f6d360ef28b55037d1f9c8c5a1e307244f70a3a9f864b17deb011ac21d2504` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance.md) | 83 | `declaration-track:11337c04630e5ac97c735b5a6f2d331125cf35099e7092f10b9a8afde112ea91` |
| 24 | `def` | [congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/congr.md) | 87 | `declaration-track:89c0c2af7ed03495646cc434088aeb01df088661f0568287fa34eb2b25aecb19` |
| 25 | `lemma` | [congr_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/congr-apply.md) | 90 | `result-track:e07e008e8e79e0ace47e6cbd71bdb16aeede910ff1283b0595f2e7c012c0eb73` |
| 26 | `lemma` | [symm_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/symm-congr.md) | 92 | `result-track:348ee32eaadfec567d359198be8f8fb23f61a0393657a2f915de5063efbaf262` |
| 27 | `lemma` | [symm_congr_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/symm-congr-apply.md) | 93 | `result-track:a9cbf525b74721ba64a2a4a9fa3a489cd4ca532746c86eb8afe5069d0dfabe12` |
| 28 | `lemma` | [toConv_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-sub.md) | 99 | `result-track:fbd3fc0acbeda7c34717b958174ed87548572d42c8cec0928a40b66c7b6ce6ba` |
| 29 | `lemma` | [ofConv_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-sub.md) | 100 | `result-track:17a22c157b7309e997a26c169130e48477a49ddf3102430c9d243afc8c341cdf` |
| 30 | `lemma` | [ofConv_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-neg.md) | 101 | `result-track:31902d9483239635c310e280b94631f5c0f594234a59237ff6f367c811b4e828` |
| 31 | `lemma` | [toConv_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-neg.md) | 102 | `result-track:82044c4198ef88ff7429d06512840ad75bc8fc6a4d110b24b1cabd0945793f38` |
| 32 | `lemma` | [ofConv_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-smul.md) | 106 | `result-track:03d465ee1e5022c5346d45a2d21c039be01467b4d040638ae2a99dca85fbcac5` |
| 33 | `lemma` | [toConv_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-smul.md) | 108 | `result-track:78c8889ec925c6fdc9b57c365ff204ad73a57a69ff4edc369412c8760a568208` |
| 34 | `lemma` | [ofConv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-zero.md) | 114 | `result-track:8656e78b36c78c88a592f0221214e09537d573a3917a78f3074960534a40ce7f` |
| 35 | `lemma` | [toConv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-zero.md) | 115 | `result-track:dca90495bc27354962ac3db0fbc946915a41702fc046e67405bbc66025504b4f` |
| 36 | `lemma` | [ofConv_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-add.md) | 116 | `result-track:e29443a684ea1e301550b0045c7ff5240d6341dcf8656b09505584bdbad7efc0` |
| 37 | `lemma` | [toConv_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-add.md) | 117 | `result-track:6eab8ec6d95c394795c79ecd94902225607fa06386d8edc57880ebd3cf819c36` |
| 38 | `lemma` | [ofConv_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-eq-zero.md) | 118 | `result-track:bf5a9ffa1fc79bb746beadab0d0f8b38c6bf3534a0213baf41802d691265415b` |
| 39 | `lemma` | [toConv_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-eq-zero.md) | 119 | `result-track:c0bb63352f502772dd07d753be3e4588c5838f671ca50bb8e9c546346a8c5c9a` |
| 40 | `def` | [addEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/addequiv.md) | 123 | `declaration-track:c64848cd97056a1fa48df0d35dbda7fa3cf4a9b39dbd1f9dabaae84027875ce0` |
| 41 | `theorem` | [toEquiv_addEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toequiv-addequiv.md) | 127 | `result-track:77525a4a63096cb275cb54df88a5545b826b1b885986d7cfc33b63bda4722261` |
| 42 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-11.md) | 131 | `declaration-track:c9532ac4161c6af5bc8a23e29445060d3fd499286dca36fd5fe274b25ed503ec` |
| 43 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/instance-source-edition-7.md) | 133 | `declaration-track:7463b2a4c8127e54001d3a943e3a22b8f588de03d52d114bb5f9c7a96adf44c5` |
| 44 | `def` | [linearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/linearequiv.md) | 140 | `declaration-track:ddb84ab841b3eea00aba6db1ee2b075e86a6e8817d27427ba66b0b89a19f38b5` |
| 45 | `lemma` | [linearEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/linearequiv-apply.md) | 144 | `result-track:85a75eec535363f0f913148daf085215652df16bcade4ca96993d725408a770d` |
| 46 | `lemma` | [symm_linearEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/symm-linearequiv-apply.md) | 146 | `result-track:d2ce04e080fb29a18d34bea937c32bc8a10558df3aa9f8c0ddb4b4eabbfab052` |
| 47 | `lemma` | [toAddEquiv_linearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toaddequiv-linearequiv.md) | 148 | `result-track:f120e39384bfb0f4aebce57f9c8e4127c169ab0250678befeee29fc13f9dac06` |
| 48 | `lemma` | [ofConv_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-sum.md) | 151 | `result-track:beca6a0f0032429adeb799e586f4a2b6b5548f3212559b71e0813890a5e79d3d` |
| 49 | `lemma` | [toConv_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-sum.md) | 153 | `result-track:583cbafeab9642cd57ee588d329c29d4fa4a52d9201805499fa322b4a4c0f9bf` |
| 50 | `lemma` | [ofConv_listSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-listsum.md) | 155 | `result-track:a7e7c02929f9051a5c0145aee0e50a414d1c7de1c235b80805c0f9a83065bc21` |
| 51 | `lemma` | [toConv_listSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-listsum.md) | 157 | `result-track:820cce3c589cac43b919070e7605141b336c1dfe544a3c8c8205ab40acd62740` |
| 52 | `lemma` | [ofConv_multisetSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/ofconv-multisetsum.md) | 159 | `result-track:345814742919499d674101edbd052eab8861653cb272e94b01885208b8346380` |
| 53 | `lemma` | [toConv_multisetSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toconv-multisetsum.md) | 161 | `result-track:07a0a1044d9db61d67b93f3123a3554b07beefb210fde26e03a370181a58226e` |
| 54 | `def` | [congrLinearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/congrlinearequiv.md) | 168 | `declaration-track:e3cde3a74efe6a8a6c310ea1cae0369d1ba6045f8b0bc344dc9d4566a082e082` |
| 55 | `lemma` | [congrLinearEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/congrlinearequiv-apply.md) | 171 | `result-track:a6391867eae9f98879a0bafea258e501cfc78608e8588fb4c6d2ec3b4dc70267` |
| 56 | `lemma` | [symm_congrLinearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/symm-congrlinearequiv.md) | 173 | `result-track:611d7ed222e5f4ea63b8300887429162ff1536ab0aa0d93fe3869d543c067c88` |
| 57 | `lemma` | [symm_congrLinearEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/symm-congrlinearequiv-apply.md) | 175 | `result-track:714083955242f3c0cd11a59156464cbac8cd7cf264c786eb3c748e4da4aec331` |
| 58 | `theorem` | [toEquiv_congrLinearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithConvPublic.lean/declarations/toequiv-congrlinearequiv.md) | 177 | `result-track:cdbc8c9cc6cb8f58e52cd39907cf5c1f60eac48ef7b9822d852b1e6e4efe919e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f01f4cadf2a06e38452b177498f6a1afe55d4ee46a48aa9a3f3c5349e94922d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/WithConv/Variant8033e51d5ae49da1a5c9b9ea3aa3656d8b139c8abab63dd5af6842462bcc332d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
