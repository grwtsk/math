# Verification target: Periodic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "754c158183f97aea265791413a1b4e62ee1977d6",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Periodic/Variant25a47733abb5ec8f934065432149cea5f00af729d5835103d5200a458fef00e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `754c158183f97aea265791413a1b4e62ee1977d6`.

Source path: `GRWTSK/Algebra/Periodic/Variant25a47733abb5ec8f934065432149cea5f00af729d5835103d5200a458fef00e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Periodic/Variant25a47733abb5ec8f934065432149cea5f00af729d5835103d5200a458fef00e2.lean.json)

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
| 1 | `theorem` | [Periodic.const_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-const-smul.md) | 53 | `result-track:23096e78e6dd239b3a01ca90aa43a2e90d7689238e6dcad9835ca264fa5b335e` |
| 2 | `theorem` | [Periodic.const_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-const-mul.md) | 59 | `result-track:4fe1d794e1addde3c96f88f7567f98916a0cfb287b4786585140869f159fe80c` |
| 3 | `theorem` | [Periodic.const_inv_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-const-inv-smul.md) | 63 | `result-track:81d69bcc4ecd112287972d7e94debc78622146e8340291efbb55e09300631449` |
| 4 | `theorem` | [Periodic.const_inv_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-const-inv-mul.md) | 67 | `result-track:90aa4019c0bbdebdce462425e47d523ab296081f7f7da92d04f57b3df170d7ca` |
| 5 | `theorem` | [Periodic.mul_const](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-mul-const-source-edition-2.md) | 71 | `result-track:62f75a88245b3aea6fcb367f8f002e80338c10ed55d094b6db095f73cdaef251` |
| 6 | `theorem` | [Periodic.mul_const'](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-mul-const.md) | 75 | `result-track:1f07d2b168a66189bef06a6598f59cf75b8b0a0c8aab32dbe3768e048a9f804e` |
| 7 | `theorem` | [Periodic.mul_const_inv](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-mul-const-inv.md) | 78 | `result-track:ff2d8752b0e9f3b5462146665a0fc9449c267353130ba46736e80065c1109a6a` |
| 8 | `theorem` | [Periodic.div_const](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-div-const.md) | 82 | `result-track:2c1fd2406a3b39917f3f2930499494343be5d3811dc7fa4dcc5d1ff1040161de` |
| 9 | `theorem` | [Periodic.exists_mem_Ico₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-exists-mem-ico.md) | 87 | `result-track:48676fc20bfc76674635ff8ab27b88d3abd0650dba79a9f6a59e6ec4d84a29d7` |
| 10 | `theorem` | [Periodic.exists_mem_Ico](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-exists-mem-ico-source-edition-2.md) | 95 | `result-track:77caefb79ca7b018c8b1c725d2c4607b3fd253d9f1d7b9785ed5a14cb77b9110` |
| 11 | `theorem` | [Periodic.exists_mem_Ioc](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-exists-mem-ioc.md) | 103 | `result-track:f1c0e19c0bef48e4586213851ba284de6dc259532f6af573b6d7b29c14a11b14` |
| 12 | `theorem` | [Periodic.image_Ioc](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-image-ioc.md) | 109 | `result-track:dbf05e0f37e5db57df8c52fa0705448c518e5e824fdcfd8c6b1b809a88b3b094` |
| 13 | `theorem` | [Periodic.image_Icc](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-image-icc.md) | 116 | `result-track:89bf25afe13c82ab99c4c56d545a871d4bb7fe6e87b11186376ebbc87867a624` |
| 14 | `theorem` | [Periodic.image_uIcc](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/periodic-image-uicc.md) | 121 | `result-track:d4c798da421fc245d6d8422840623a2e7d692b13d1d1a41f5eca34a9987f7f77` |
| 15 | `theorem` | [Antiperiodic.add_nat_mul_eq](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-add-nat-mul-eq.md) | 132 | `result-track:fcca9ca447709cedea63e421d613ba03d800ccdde41699ba50bec055b05b5657` |
| 16 | `theorem` | [Antiperiodic.sub_nat_mul_eq](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-sub-nat-mul-eq.md) | 137 | `result-track:0354032f9fee0e8359c10ca75f62b3e055aab0e3cad00243bb1daa459019c0b3` |
| 17 | `theorem` | [Antiperiodic.nat_mul_sub_eq](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-nat-mul-sub-eq.md) | 142 | `result-track:f532a7cab3e5d480c9ec7ca7568c3314e8cc15a3bf972d66bd2c131e1d56d0b7` |
| 18 | `theorem` | [Antiperiodic.const_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-const-smul.md) | 147 | `result-track:88a644fe01c6a5f5ecd44da09a648f0a9e6e0dcc74f18a9dd42bef52571b76fd` |
| 19 | `theorem` | [Antiperiodic.const_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-const-mul.md) | 151 | `result-track:eb17f84676327963c8c8fbae078ec098a3404298e13c88481830104a68cf7501` |
| 20 | `theorem` | [Antiperiodic.const_inv_smul₀](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-const-inv-smul.md) | 155 | `result-track:289b4207dc04282942d5fdb3407c3143c4f920a235df30744dd59d3d0d956127` |
| 21 | `theorem` | [Antiperiodic.const_inv_mul](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-const-inv-mul.md) | 159 | `result-track:0cf7d2f768b6fea229eb8799231bee54b5ffb21b79fbbcc6993b896c7d0254f3` |
| 22 | `theorem` | [Antiperiodic.mul_const](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-mul-const-source-edition-2.md) | 163 | `result-track:460eaf431b0ad0bf51f5ba5cbe7e10be38dc5489a501c26eec919859714f37ce` |
| 23 | `theorem` | [Antiperiodic.mul_const'](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-mul-const.md) | 167 | `result-track:3f37402e6fbcab4cb56941b50659bb59a69e3d3e694730a99e63cf9bfea561ac` |
| 24 | `theorem` | [Antiperiodic.mul_const_inv](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-mul-const-inv.md) | 171 | `result-track:8c965b1e9a80499196174d13ebbf1403be2195e62eae005c9e9560a7b6c65d48` |
| 25 | `theorem` | [Antiperiodic.div_inv](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/antiperiodic-div-inv.md) | 175 | `result-track:e61126e456b80d6641daaf3bb67d9bf3f24bfc607494d257e216e44842a21b93` |
| 26 | `theorem` | [Int.fract_periodic](../../../../FieldTheoryAndPolynomials/PeriodicNamespacedPublic.lean/declarations/int-fract-periodic.md) | 181 | `result-track:36e8ed014fca8821545e0e545066f5a7512d17f97dc4098b849519e872bdf291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e55a00421d323acdc25d067cdfba4ebe2ef3739790b6cf081bcdd4239a5accf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Periodic/Variant25a47733abb5ec8f934065432149cea5f00af729d5835103d5200a458fef00e2.lean","GRWTSK/_verification/specifications/Algebra/Periodic/Variant25a47733abb5ec8f934065432149cea5f00af729d5835103d5200a458fef00e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
