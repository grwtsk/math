# Verification target: Approximate Subgroup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5bfed85daed8501a067817f7e0751231b3b9517",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ApproximateSubgroup.lean/index.md) · [Full source](../../../../Combinatorics/ApproximateSubgroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5bfed85daed8501a067817f7e0751231b3b9517`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.CovBySMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.RuzsaCovering` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.SmallTripling` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsApproximateAddSubgroup](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/isapproximateaddsubgroup.md) | 47 | `declaration-track:7f5add5cbeea3613cdc1f8c968f6640d68b36bf6748984743b75cefdfcd6b1a2` |
| 2 | `structure` | [IsApproximateSubgroup](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/isapproximatesubgroup.md) | 59 | `declaration-track:4780f6b7cb2586c5f1b5fc3f5154bc8f223beb8b35ce4baa623986dc17a268af` |
| 3 | `lemma` | [nonempty](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/nonempty.md) | 66 | `result-track:83eec72d11e09a8ffd6de668d2cc85c66bb0fb7995b3cad55c242b6f2e5828c7` |
| 4 | `lemma` | [one_le](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/one-le.md) | 69 | `result-track:7afdd37787357084aeaf333ac7b6addee817b19e974745082552ab531c706faa` |
| 5 | `lemma` | [mono](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/mono.md) | 75 | `result-track:faf2e3915597dac2a75c0a942781aab505cfe0efbfb881d69ec6f1a86dfc517d` |
| 6 | `lemma` | [card_pow_le](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/card-pow-le.md) | 81 | `result-track:759f9246f9177ad71604e4ccea36763fde5b43554e2edccaa97ddc266db7d2e5` |
| 7 | `lemma` | [card_mul_self_le](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/card-mul-self-le.md) | 95 | `result-track:befdd0451fb90ab8f3a9b6b047c610197b6d6f1df2d1f37ea755773cdf870e02` |
| 8 | `lemma` | [image](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/image.md) | 99 | `result-track:2409948bab183a1225a1f0b04a52aa1790de067b5bfa801ab4e3ba7637f85f50` |
| 9 | `lemma` | [subgroup](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/subgroup.md) | 114 | `result-track:22da6fde349048fc12e8e09b18ccd6a9c7891b0ed918ff653d3a35f1918342ca` |
| 10 | `lemma` | [of_small_tripling](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/of-small-tripling.md) | 122 | `result-track:7e3eb407a735aaa5c0c5c7bb7a5141277defe42a22d7d3ec8b9595f74824f98b` |
| 11 | `lemma` | [pow_inter_pow_covBySMul_sq_inter_sq](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/pow-inter-pow-covbysmul-sq-inter-sq.md) | 136 | `result-track:d2fa91f22c80abdf5b20e4f0484e19206cdfda439050b634cbec87ed0afc51fb` |
| 12 | `lemma` | [pow_inter_pow](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/pow-inter-pow.md) | 164 | `result-track:b24f8e3e3ead0b184e91b78c4750ddee3a86fce1651cfe38fccfab1acf574938` |
| 13 | `lemma` | [isApproximateSubgroup_one](../../../../Combinatorics/ApproximateSubgroup.lean/declarations/isapproximatesubgroup-one.md) | 182 | `result-track:08e923ced2ee555c03e3f613963284a00589861364228b836ea6556a84611782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fff10ad3fa023d83c84fb30425daf0e0a63f0bf8fdb075ac678e67417c591b89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
