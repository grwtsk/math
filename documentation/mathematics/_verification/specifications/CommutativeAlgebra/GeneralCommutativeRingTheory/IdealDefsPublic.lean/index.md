# Verification target: Ideal Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32a392ff7bf92ad7c68a9301d9dc5d6961d531b1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32a392ff7bf92ad7c68a9301d9dc5d6961d531b1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean.json)

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
| 1 | `abbrev` | [Ideal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/ideal.md) | 40 | `declaration-track:05d4c0bc29e3ed2b79db34ca2511cf5bc708ed261fb6c5917ce8c35e7be3f1ce` |
| 2 | `class` | [IsTwoSided](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/istwosided.md) | 50 | `declaration-track:0df12bb110524b39a6465780e0ef24ea163bc51bb30684bf512d0a6ccff9318c` |
| 3 | `theorem` | [zero_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/zero-mem.md) | 53 | `result-track:25441d448dfd4a955af17a0be9f2fd1e9db344f917dad25c8e25f8f69313fd2c` |
| 4 | `theorem` | [add_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/add-mem.md) | 56 | `result-track:353e51d694f3c4bbac4e1ee3c847b55729da709758b726356577844b766108e9` |
| 5 | `theorem` | [mul_mem_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/mul-mem-left.md) | 61 | `result-track:3b6700f5e4944293195d3a1675e6511d9bfaa4c0ab13f0c5bdf4f49471667fe1` |
| 6 | `theorem` | [mul_mem_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/mul-mem-right.md) | 64 | `result-track:d14deb00d7fabd896121e119d0cba4344f22c447462fe464f252e537a60da155` |
| 7 | `theorem` | [ext](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/ext.md) | 71 | `result-track:039d2ec0827f3423f1b27e442c611ea5f34e734a5bf4ad27f8898ee16bbf18cd` |
| 8 | `theorem` | [unit_mul_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/unit-mul-mem-iff-mem.md) | 75 | `result-track:eaedb4bb5dc7dd554a204ca995ce54d02b52c1a18f3d17f13db5845f7fdfeb44` |
| 9 | `theorem` | [pow_mem_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/pow-mem-of-mem.md) | 81 | `result-track:26920a3256203b5db4491a81b4c50126a4c34d8d8d37218b3a0375ecd14bfc46` |
| 10 | `theorem` | [pow_mem_of_pow_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/pow-mem-of-pow-mem.md) | 85 | `result-track:81cd5c9a82cff3d93c12b49fa4c8a96ec7f9eaa5fca9eee5b7666cbb37ccf886` |
| 11 | `def` | [Module.eqIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/module-eqideal.md) | 94 | `declaration-track:7a11062fd62c2c6b4e7940c56a919df5a1d9efd526975e2baa5e1c75e351ce0b` |
| 12 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/instance.md) | 112 | `declaration-track:29e89a7778d46939cfe5637765e1ac54e3fd671c42ac1edca5902ff400e84ba8` |
| 13 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:371ae64cd791ecd7aae9c01633bee86c5da8aa20fd99b3971b2012c28a00cc64` |
| 14 | `theorem` | [mul_unit_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/mul-unit-mem-iff-mem.md) | 116 | `result-track:a46b1bf4b5651fb2dc4a7b243c095e314e0f1d88037d2c7337b0bb10a0007377` |
| 15 | `lemma` | [mem_of_dvd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/mem-of-dvd.md) | 119 | `result-track:86527425abaf80358c7c5061b2af84df46c856356ac47f0f580da457590b8ce0` |
| 16 | `theorem` | [neg_mem_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/neg-mem-iff.md) | 132 | `result-track:48b6e7bcd38cc562753f6f37caa8be9345f2ad0e08448c85bd7be0a3b42b3092` |
| 17 | `theorem` | [add_mem_iff_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/add-mem-iff-left.md) | 135 | `result-track:89010ce4feffd68b67a7bb84e5cfb143c0a234bddbcbf085444c461e6e05debe` |
| 18 | `theorem` | [add_mem_iff_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/add-mem-iff-right.md) | 138 | `result-track:c3ae0d5721a4a8ba48b558018d416a2f6dce4fbed217b5a498684736b3b1b379` |
| 19 | `theorem` | [sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/sub-mem.md) | 141 | `result-track:19b644dd967a7f9954910692c8ba76ae24e15c9ab0744d8003671cf9cb84b553` |
| 20 | `theorem` | [mul_sub_mul_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/mul-sub-mul-mem.md) | 144 | `result-track:552aa816eca5264209d54779b545d504b2274a9cdf8503be31c1d121af5aae4b` |
| 21 | `abbrev` | [inertia](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/inertia.md) | 154 | `declaration-track:f472a8419c389bb34bac67d066ec0f55c0b74bf767e8b1894e3d786a9e4f842b` |
| 22 | `theorem` | [mem_inertia](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/mem-inertia.md) | 157 | `result-track:3762ddfd8cc9ee615692da98f13978b1c2d42d25062d8bbe8bd62952abdc8b1f` |
| 23 | `theorem` | [coe_mem_inertia](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealDefsPublic.lean/declarations/coe-mem-inertia.md) | 161 | `result-track:7ac0cf3cf50c19242b56a7bf937fc43da887fdfb2e501083564b2340dfcafbff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ee93ae1d5d6e55d13e8b0d6a5ee19f4031ad8f72aae756700cb43072df88e64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant656d5aabba0ca74ab1fc906dc9cdf93b9fc6c6b25f0f155b58f261ec461e80d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
