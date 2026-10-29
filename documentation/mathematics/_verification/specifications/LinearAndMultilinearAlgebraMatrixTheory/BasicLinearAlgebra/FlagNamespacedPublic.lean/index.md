# Verification target: Flag Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eada757a3a14fef2550d20537886e4dd9d72503",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eada757a3a14fef2550d20537886e4dd9d72503`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean.json)

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
| 1 | `def` | [flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag.md) | 45 | `declaration-track:1c38ce181162702a31cfeaaa9aa1e175b17b58cd05fc183048b046bafc1b7a77` |
| 2 | `theorem` | [flag_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-zero.md) | 49 | `result-track:2fc4d61cb80040e2ce4fc9134e3ff91264a8bb834d4124f4fc5747ae2df39708` |
| 3 | `theorem` | [flag_last](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-last.md) | 52 | `result-track:b2474d47fd8c7e8a3ce28365be39c467d3931c931cf8c6a3d980be4032ea1489` |
| 4 | `theorem` | [flag_le_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-le-iff.md) | 55 | `result-track:c4c9476955212f91a1986d11685bfcf49d4659ce6c1bfca7ff4feaa020eb0cd2` |
| 5 | `theorem` | [flag_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-succ.md) | 59 | `result-track:1b73f80ed774fbaf1a5c5eb2c97c6f1c668419f0764f2cd467a4288e691a7613` |
| 6 | `theorem` | [flag_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-map.md) | 64 | `result-track:97a18bd2582a70a66559db4e1466f515e87cdb8fd4c23da1b72515e62ca4a5bd` |
| 7 | `theorem` | [mem_flag_iff_repr_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/mem-flag-iff-repr-eq-zero.md) | 70 | `result-track:7493439ca6f52303ca1131a6915463596b13a8e1b5185426365604e414de0d5f` |
| 8 | `theorem` | [self_mem_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/self-mem-flag.md) | 74 | `result-track:59056c7c1862dcc725d84c35b4d18e0a0a4b305b80b19fdaee1aec5b1317567a` |
| 9 | `theorem` | [self_mem_flag_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/self-mem-flag-iff.md) | 79 | `result-track:a304e6449811fc6ca151e01836d354d5bcd56bf5b3360d9c712f0413e335c78d` |
| 10 | `theorem` | [flag_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-mono.md) | 84 | `result-track:9a79a7c9b1de17356e8b2cee12a89ecc0e2d545b03e6f77f1f79e0dba6d88852` |
| 11 | `theorem` | [isChain_range_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/ischain-range-flag.md) | 87 | `result-track:d62efc4886ef858839ca9532525beb0daed546cecf64847d6e6751dc15e9680e` |
| 12 | `theorem` | [flag_strictMono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-strictmono.md) | 91 | `result-track:3ac7d37c34578f6efd7172926b439f5b989cc5742532b47e715cd3f3c3b1900b` |
| 13 | `theorem` | [span_singleton_le_mkFinCons_flag_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/span-singleton-le-mkfincons-flag-succ.md) | 101 | `result-track:31224d93c54bce4bf1b421bbf12e8247947ce649dafb82d0b4f62fafdbdea898` |
| 14 | `theorem` | [map_flag_le_mkFinCons_flag_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/map-flag-le-mkfincons-flag-succ.md) | 111 | `result-track:4f59f3ea28531b094e5bc1a6191c596392fa706e823bfb863ba085e6c9cae94f` |
| 15 | `theorem` | [flag_le_ker_coord_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-le-ker-coord-iff.md) | 127 | `result-track:e48cc93c6e4f679d32c85c470c4372b150e36c7f1e0b846dc5bfabea9dcc65ff` |
| 16 | `theorem` | [flag_le_ker_coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-le-ker-coord.md) | 131 | `result-track:8451cd1f9f0a1bfb14845be24508ba4d7fcf20d9490fd0a0d09c90fd27e6c06c` |
| 17 | `theorem` | [flag_le_ker_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-le-ker-dual.md) | 136 | `result-track:5841c5a82ec404b00603b9602cd142a42b48f725caf6e2033d56366a7069c731` |
| 18 | `theorem` | [flag_covBy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-covby.md) | 147 | `result-track:0745fe1e1fcedc7738b6ce6e616d17b143f14764b00965c1efcc1e4e70ff0f8c` |
| 19 | `theorem` | [flag_wcovBy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/flag-wcovby.md) | 153 | `result-track:a44c31653be740329bc99630ec902504cec872ca280b24b80ff7f9f74440f807` |
| 20 | `def` | [toFlag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/toflag.md) | 159 | `declaration-track:dbca6553b6f982aba899e079716cc68dbbfbad9af7740ceee6849b2244604134` |
| 21 | `theorem` | [mem_toFlag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/mem-toflag.md) | 163 | `result-track:c2eb0d23e29967a2643d8bebd243949717131f6a1a77ab6d01fc90f8d69ab4e2` |
| 22 | `theorem` | [isMaxChain_range_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagNamespacedPublic.lean/declarations/ismaxchain-range-flag.md) | 166 | `result-track:2013349681e42acddf4dee95a4dba51c73ec4b428aa66b2af21ec1adb89f1b56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e9d7d9bfe3b93732590f55809552e6bdadb1c67dc76482d086bb189e77f0673 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Flag/Variant16a07c7ac9188d57c496d052669f777bc29ca1d614f047ba07a57736f7f851f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
