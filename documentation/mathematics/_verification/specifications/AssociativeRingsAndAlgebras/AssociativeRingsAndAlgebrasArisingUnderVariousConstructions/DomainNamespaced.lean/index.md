# Verification target: Domain Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "072c856cae6228b25a03be8f6f4744f50fc00aa4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Domain/Variant6e294b3324d8133c00f684a62c61a5a2073dfe385b8df467d32d396713334fca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `072c856cae6228b25a03be8f6f4744f50fc00aa4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Domain/Variant6e294b3324d8133c00f684a62c61a5a2073dfe385b8df467d32d396713334fca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Domain/Variant6e294b3324d8133c00f684a62c61a5a2073dfe385b8df467d32d396713334fca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/instance.md) | 41 | `declaration-track:29742cbf622e196851aa2a9faa5148a18fa7f9ae89fb438ad737b903ea5501db` |
| 2 | `lemma` | [natDegree_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/natdegree-mul.md) | 47 | `result-track:8f5423a86a1b6d9df709d78c97e9396552ac54af1334808aa82c5252fc98468c` |
| 3 | `lemma` | [natDegree_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/natdegree-smul.md) | 52 | `result-track:060f13bd3d6dd22b9f377ad066806a3459924e5d4ec62bf0fae25685c4fe95ac` |
| 4 | `lemma` | [natDegree_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/natdegree-pow.md) | 61 | `result-track:fec209514bdb3570a1b139a932745a3ebb0085ea5b8eb7bcd5ba9f12e552344c` |
| 5 | `lemma` | [natDegree_le_of_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/natdegree-le-of-dvd.md) | 68 | `result-track:c63d44d80089856fd7beb4ca5f34f1d895181acb5e76b350ab709091e5735f21` |
| 6 | `lemma` | [degree_le_of_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/degree-le-of-dvd.md) | 73 | `result-track:821ee83b30549ae4c9a6a47711747d5e13ef4758388a739bfc869f83dd9fc502` |
| 7 | `lemma` | [eq_zero_of_dvd_of_degree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/eq-zero-of-dvd-of-degree-lt.md) | 77 | `result-track:2135403fffc43b0fef15ede77049bb25e827fbd6655bff48137a1410d37b0288` |
| 8 | `lemma` | [eq_zero_of_dvd_of_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/eq-zero-of-dvd-of-natdegree-lt.md) | 81 | `result-track:71763e0b32f31de0602306beca756be1fa5c12f6c4d37d9bd1508f9ab5183ec2` |
| 9 | `lemma` | [not_dvd_of_degree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/not-dvd-of-degree-lt.md) | 86 | `result-track:10210117a77746dca0606b1a013213df47032bf59fdeee2168088d578d0cbc2e` |
| 10 | `lemma` | [not_dvd_of_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/not-dvd-of-natdegree-lt.md) | 90 | `result-track:9df3a167edbd848b6114f553b07992ac0e3f6281dcf7a21c1355c9562290b351` |
| 11 | `lemma` | [natDegree_sub_eq_of_prod_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/natdegree-sub-eq-of-prod-eq.md) | 96 | `result-track:77e93e1a49eace73cacf8f14ba697247dc3f6317d6b7933dd31ef1f044b1c300` |
| 12 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DomainNamespaced.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:8d9db5e964874e186aed29b791d9f77d2d9163b069c3ea34aea5b5dea66d2291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1eb39fa707cc487c1ea4f260c1c5d102eea6b6a2dcae87b1fe84fa3b01ba3fca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Domain/Variant6e294b3324d8133c00f684a62c61a5a2073dfe385b8df467d32d396713334fca.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Domain/Variant6e294b3324d8133c00f684a62c61a5a2073dfe385b8df467d32d396713334fca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
