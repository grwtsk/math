# Verification target: Number Field Basic Namespaced Ring Of Integers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ae646305753bf003172fcbb0de3264ced80ce78",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ae646305753bf003172fcbb0de3264ced80ce78`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NumberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/numberfield-source-edition-2.md) | 45 | `declaration-track:b6d710e0f929a42677d4b912b63a0526718c4d00f00eaa0e674a4605aa265df5` |
| 2 | `theorem` | [Int.not_isField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/int-not-isfield.md) | 55 | `result-track:cd3e910046fa02a82264fc95c3996aa4909c1c04bb8e87f9dc163ed8af8a71c3` |
| 3 | `theorem` | [isAlgebraic](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/isalgebraic.md) | 67 | `result-track:a61d8072020f0038c5b2e7eb3c61505eaa3880ee3774203575fa1ae263d693ff` |
| 4 | `def` | [ringOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/ringofintegers.md) | 73 | `declaration-track:34a5bc5c746cdaf4877ca084afd377c306c2473e29ccd518419a52d60d6bf9cf` |
| 5 | `theorem` | [mem_ringOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/mem-ringofintegers.md) | 79 | `result-track:c3a16ba937cdeefd0152f687164d72e4b704db00826f6bc11d484143dd7fc75f` |
| 6 | `theorem` | [isIntegral_of_mem_ringOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/isintegral-of-mem-ringofintegers.md) | 83 | `result-track:df0aaa5caaa8b197c35f46eec8b7e72bbfb7019ed131cf008a45bec5f48e17c6` |
| 7 | `instance` | [inst_ringOfIntegersAlgebra](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/inst-ringofintegersalgebra.md) | 92 | `declaration-track:d4f9ccfdeef164236ccdf853b7bc2932eaf8e9041d8e72699f35b9640473636c` |
| 8 | `example` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/example.md) | 104 | `declaration-track:85b451bc46edf6d7d3e36f049b3f0efc3124894c2dae17ff2aa211415d134880` |
| 9 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-6.md) | 110 | `declaration-track:b68904281710be4a63f4b23fac9c5eb3aed376fc8893b790b1a6820e31c3f2fa` |
| 10 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:1597259dae11bad550850af470bb2e3402644c8e32378f3b039efe23e9180fbd` |
| 11 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-5.md) | 116 | `declaration-track:a04255ac82f289dc9af7acb740b7b79172efd7db4466da1d718ca7618aff6131` |
| 12 | `theorem` | [isIntegral_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/isintegral-coe.md) | 119 | `result-track:7b00e0f147abba3e9dac770bf8af384f09e7dee5c8e8b9b143ad12e5adc60bb4` |
| 13 | `theorem` | [map_mem](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/map-mem.md) | 123 | `result-track:3f9dea9eb2c1fb756f663ac9a0dca4fbe6bc5dafd3e95ab92e63a06585325236` |
| 14 | `def` | [equiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/equiv.md) | 129 | `declaration-track:1cc80c78265ca8ca3686755101ca9ba4f55a5d9209459e0bc328b90994acca46` |
| 15 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-9.md) | 136 | `declaration-track:fdec324e6de099199ee9e20aa137c1c82c0884938bbefd0b6c34ba9193d6e280` |
| 16 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-3.md) | 139 | `declaration-track:692c9ae43c165b84e700cf204055e87d659f19cad56094da2fa827b4da5408c9` |
| 17 | `theorem` | [not_isField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/not-isfield.md) | 143 | `result-track:0ff8ad61499e7a4afc7f13f3c426204e3658ccf11858fb806f0bd050034a5c85` |
| 18 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-4.md) | 150 | `declaration-track:750b9032536d54ce4cddf21430485d084b908015e39f99738298a0d5af504617` |
| 19 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-8.md) | 153 | `declaration-track:ef54671514a3b0568bf5e59967e7246c4de42e2e200183d5e2b99a21e47c74f6` |
| 20 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance.md) | 156 | `declaration-track:1184a916300edae83a3f6bb63a7103daccc24af4cea1fc9bc21128821dda8adb` |
| 21 | `def` | [basis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/basis.md) | 160 | `declaration-track:397b8f589e9897c5e0cb166276c09aad8a63a25aae079687099a3edbfe0e9727` |
| 22 | `def` | [integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/integralbasis.md) | 167 | `declaration-track:313858799b03cbc164d64cd0e6fa6e09c152bb9fed4852ba279191dc083a3042` |
| 23 | `theorem` | [integralBasis_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/integralbasis-apply.md) | 172 | `result-track:1e6b3bb5bdd7ee7712119a7be9fd2e3f864752d160bde1e69b7598fba10edd19` |
| 24 | `theorem` | [mem_span_integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/mem-span-integralbasis.md) | 177 | `result-track:12d48a00208bb79255bd28f38f3a17392d6b43ee0100d29b8d13619b8465e88e` |
| 25 | `theorem` | [RingOfIntegers.rank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/ringofintegers-rank.md) | 182 | `result-track:daf5b018df9505a1432f0b5582f2143879aeccabfd5d906cdd02b63d7e65b84e` |
| 26 | `instance` | [numberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/numberfield.md) | 192 | `declaration-track:846d3e3263b6e1635459004f0c00b63aae812d74ace7afec1cf6da52a30d7cd2` |
| 27 | `def` | [ringOfIntegersEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/ringofintegersequiv.md) | 203 | `declaration-track:5c14779f98bc6888cfc03ffe9090df88ad6f3b841b43a90809bbdd0364de8216` |
| 28 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedRingOfIntegers.lean/declarations/instance-source-edition-7.md) | 219 | `declaration-track:cc4e486319aeddf7f54d657d6dca68cab2fb13993dc6f4911463dde32e22211d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f62fb988b84cbd2b9560365c4f7836b6e06b90061aab672a61e689170cb122c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
