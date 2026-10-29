# Verification target: Positive Linear Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77a1da67935f9d861fc4155e3ee207a33878dc83",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PositiveLinearMap/Variant2e05608f4c59bd6159a3bacee59fb102687dcec910ac68533799f2b2f89e9f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PositiveLinearMapPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PositiveLinearMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77a1da67935f9d861fc4155e3ee207a33878dc83`.

Source path: `GRWTSK/Analysis/PositiveLinearMap/Variant2e05608f4c59bd6159a3bacee59fb102687dcec910ac68533799f2b2f89e9f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PositiveLinearMap/Variant2e05608f4c59bd6159a3bacee59fb102687dcec910ac68533799f2b2f89e9f51.lean.json)

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
| 1 | `lemma` | [apply_le_of_isSelfAdjoint](../../../../FunctionalAnalysis/PositiveLinearMapPublic.lean/declarations/apply-le-of-isselfadjoint.md) | 43 | `result-track:225b6981100a8a8464aa723843e204285f97ff91d9c3f1383df14447dcb99deb` |
| 2 | `lemma` | [norm_apply_le_of_nonneg](../../../../FunctionalAnalysis/PositiveLinearMapPublic.lean/declarations/norm-apply-le-of-nonneg.md) | 48 | `result-track:bf572271cc9cc552e2096c169816678ec56f4027d4af86efd1010e922dc9d157` |
| 3 | `lemma` | [exists_norm_apply_le](../../../../FunctionalAnalysis/PositiveLinearMapPublic.lean/declarations/exists-norm-apply-le.md) | 63 | `result-track:4bd7176e1f3f38d35a880ddceedd2c43e5f3a10aff8fddf268233736cd6e128f` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PositiveLinearMapPublic.lean/declarations/instance.md) | 112 | `declaration-track:ea5d8ed36906c73459c5795004fce0981f06d7aeab646db9d277c556a6faea1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=753ee3016611bf3e53c64ecde6304dd78577a3d34ed89fccc584d62d4e4f476a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/PositiveLinearMap/Variant2e05608f4c59bd6159a3bacee59fb102687dcec910ac68533799f2b2f89e9f51.lean","GRWTSK/_verification/specifications/Analysis/PositiveLinearMap/Variant2e05608f4c59bd6159a3bacee59fb102687dcec910ac68533799f2b2f89e9f51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
