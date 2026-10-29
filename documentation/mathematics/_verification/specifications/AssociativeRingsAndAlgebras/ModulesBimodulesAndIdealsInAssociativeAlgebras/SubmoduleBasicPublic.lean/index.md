# Verification target: Submodule Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc91e5f0cc6231e99bd236adedd803710a27f15f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc91e5f0cc6231e99bd236adedd803710a27f15f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f.lean.json)

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
| 1 | `theorem` | [toAddSubmonoid_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/toaddsubmonoid-strictmono.md) | 40 | `result-track:6583a0ae7afdb1e985362f56f76354ee43b1ddccaee440d05b025084920ccacf` |
| 2 | `theorem` | [toAddSubmonoid_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/toaddsubmonoid-le.md) | 43 | `result-track:efbdd006128f323df1443a2086eae7768cc3bf05cbd57a29ff8c230041d44d95` |
| 3 | `theorem` | [toAddSubmonoid_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/toaddsubmonoid-mono.md) | 47 | `result-track:9a48af77f053009f144d36be8347332a4490ef8a5e2817d6a9d24b46362c333e` |
| 4 | `theorem` | [toSubMulAction_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/tosubmulaction-strictmono.md) | 51 | `result-track:330bae658c1ff97fdcb6bbf8e64a8ef9c4639a1e8fe73d64005c48a55f1f5891` |
| 5 | `theorem` | [toSubMulAction_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/tosubmulaction-mono.md) | 55 | `result-track:f9eaf99dddcfb98033bc54d427e38747689e733421d3fa44baeb153c8d7b4dd5` |
| 6 | `theorem` | [sum_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/sum-mem.md) | 73 | `result-track:6da7a7dc85f42708544890fe3ca28e87b3b6d620dbfe20d5fefaaff0a356d347` |
| 7 | `theorem` | [sum_smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/sum-smul-mem.md) | 76 | `result-track:ed2119bd1f77104d87cac1b20f5d578b32621070ecbd4fd84cbcab64dc7219bb` |
| 8 | `instance` | [isCentralScalar](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/iscentralscalar.md) | 80 | `declaration-track:a8de6b5bee4a771beb07e3ca73ccc5052adf6ba505da4f67d887853a902e6f4b` |
| 9 | `instance` | [instIsTorsionFree](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/instistorsionfree.md) | 84 | `declaration-track:1dd547c9f516898aed5b91bb311d7e95e04c301800c140a12509b9e391514466` |
| 10 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:fb93e13afca5f22a0ce227506cdf72abbb6b01db89a923d61a182f10afe7daa8` |
| 11 | `instance` | [vaddCommClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/vaddcommclass.md) | 103 | `declaration-track:e6f1f106c6bc1540b9c7ce5847eb922a09f6d91dc342574c31517ddf6a520d8c` |
| 12 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/instance.md) | 106 | `declaration-track:347c31f3f636acc087de28c33736ca923b60411110e16e2e188a266710f34a88` |
| 13 | `theorem` | [vadd_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/vadd-def.md) | 111 | `result-track:82b4c1222faaea0ed545e5c99e0a9dfe58f03ce8c5b01b3009ea2b03877c0fac` |
| 14 | `theorem` | [toAddSubgroup_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/toaddsubgroup-strictmono.md) | 126 | `result-track:56d5c54fbbcda041cf66cf62bcdc94dadaf36928853024a86c095fc6cb540acc` |
| 15 | `theorem` | [toAddSubgroup_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/toaddsubgroup-le.md) | 130 | `result-track:f8d3088fd10afdabc012915987ec5b9ab124a383ed72d11854ed87c98b26fecc` |
| 16 | `theorem` | [toAddSubgroup_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/toaddsubgroup-mono.md) | 134 | `result-track:907c0b64987bebdf360350effb6d55c1cfa1668a046ef2de0eab1ce01070ad3e` |
| 17 | `theorem` | [toAddSubgroup_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/toaddsubgroup-toaddsubmonoid.md) | 138 | `result-track:d486c65048ca43a5f9f6b30d7d11c3791c48e8aa7704723aad9a0dba76f87e4c` |
| 18 | `theorem` | [neg_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/neg-coe.md) | 143 | `result-track:2a0a39e495d43a0d7504e4cf50445fbd34035e3aee84942c4be4e419880c16f0` |
| 19 | `theorem` | [notMem_of_ortho](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/notmem-of-ortho.md) | 153 | `result-track:28c248ebe0792043b62dcbeb8fc2dcebfd93f76dd9011210236a1efa374da960` |
| 20 | `theorem` | [ne_zero_of_ortho](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/ne-zero-of-ortho.md) | 158 | `result-track:c574b0f9f4d10b0c03874e0638adcec8e571d6c2c5c6df3bde4b485a7cb5e859` |
| 21 | `theorem` | [smul_mem_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/smul-mem-iff.md) | 172 | `result-track:f80e656257888c0bb7e0bb0978307decd169a83caa53528cd2283186a9af0c91` |
| 22 | `abbrev` | [Subspace](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicPublic.lean/declarations/subspace.md) | 178 | `declaration-track:52c2b81902ab167d533deb6c929e38bb6cbe0f167e4ce938a8e49aa43bfa5e5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfd413b6bb1ffb78089448dc7614463afb5a32ab150424d61b5e94b993c4cd9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant34c1fcaddc748a5eb888108fae54b5a537c9361ba604ec07151427e380714a2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
