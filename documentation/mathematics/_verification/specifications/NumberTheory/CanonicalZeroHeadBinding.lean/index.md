# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalZeroHeadBinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdd3758a97c015385ab8d7381dda0882cfceeaa4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/index.md) · [Full source](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdd3758a97c015385ab8d7381dda0882cfceeaa4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion`](../../../../Combinatorics/PositiveMassExhaustion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalDiskSeparation`](../../../../FunctionsOfAComplexVariable/RationalDiskSeparation.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation`](../../../../NumberTheory/CanonicalRationalTentEvaluation.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalWitnesses](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/localwitnesses.md) | 37 | `declaration-track:afb9e7681da20072fb834eed603ea721389a857efab5807e52cc3f7b32ef4b1b` |
| 2 | `def` | [witness](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/witness.md) | 43 | `declaration-track:1c6deb15a3479263e966e57cac9369cdeaee3322fce4c676f46ff1e245d30b99` |
| 3 | `theorem` | [witness_spec](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/witness-spec.md) | 46 | `result-track:b5021fd5d4d3fe272533f88dd602210a8cd3d83ba449b24a13688c30eda73b98` |
| 4 | `theorem` | [head_subtype_mass](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/head-subtype-mass.md) | 54 | `result-track:615ade9935ddb1146fc64e247e5baaa4c016fee95123bbb129d244aeb7263090` |
| 5 | `def` | [of_local_witnesses](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/of-local-witnesses.md) | 61 | `declaration-track:b4f025653c1bc1e126c5e12ffc1f36b7d87984fd8e7fc73590abc917930df2a7` |
| 6 | `theorem` | [exact_count_of_binding](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/exact-count-of-binding.md) | 94 | `result-track:40f0f2d41217e3ff4983fc750fa234a365d6dd9f1a6ae10dc2bfa48fb06ba9bf` |
| 7 | `theorem` | [unique_zero_in_disk](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/unique-zero-in-disk.md) | 104 | `result-track:609e162aab0f2f122b62ed6550946783920d158dde01a3d6adfbfbf3eb930e26` |
| 8 | `def` | [of_simple_witnesses](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/of-simple-witnesses.md) | 126 | `declaration-track:c03d96509f36f9a3c689fbe9424429694812d1b19f00754e44294a4f854e1ace` |
| 9 | `theorem` | [all_simple_of_unit_binding](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/all-simple-of-unit-binding.md) | 143 | `result-track:7f75811d299cc3714105a67b1b560f818dd5fd44702dd383e9b9c2e5b5f94c84` |
| 10 | `theorem` | [verified_head_of_local_witnesses](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/verified-head-of-local-witnesses.md) | 155 | `result-track:80d3ea2f394f48681fc1a116cadd0ec05e18d268561a6c9d0b35a06f8d002388` |
| 11 | `theorem` | [prime_in_square_of_saturated_disks](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/declarations/prime-in-square-of-saturated-disks.md) | 170 | `result-track:4ac294e475bb1e5ce2ab87679aa2b292134eb3ef5d6d969126d16e193d9937f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=557f6d5b6d9da2ff0684c3f4111e099ae20e2962dfdb694eaf801ca1997b2325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
