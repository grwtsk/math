# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ENatToNat.Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e8b25d15a3e89fa487265a248e72f19a1b33207",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e8b25d15a3e89fa487265a248e72f19a1b33207`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_lt_top](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/not-lt-top--13c8ddf643231faa2950b87b.md) | 37 | `result-track:13c8ddf643231faa2950b87bc9a68c1c870217ea3d9ef521546b5dd5d8c2cf30` |
| 2 | `lemma` | [coe_add](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/coe-add--9a04f8ca8dab67f682c5e13e.md) | 40 | `result-track:9a04f8ca8dab67f682c5e13e319a03556e6f8d99462b6e106a6de90b352050b8` |
| 3 | `lemma` | [coe_sub](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/coe-sub--2f5cc7f8b34cd31a97d0dc0f.md) | 43 | `result-track:2f5cc7f8b34cd31a97d0dc0f37488de089feda4970deabd0d00263c01abcf31a` |
| 4 | `lemma` | [coe_mul](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/coe-mul--b62f3ed063aeebcb61f3185a.md) | 46 | `result-track:b62f3ed063aeebcb61f3185a244bb767252a617dc30ba71be250e8fffcbad5c8` |
| 5 | `lemma` | [coe_ofNat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/coe-ofnat--d7a75398375f613b8cf8040d.md) | 49 | `result-track:d7a75398375f613b8cf8040df0e5d2ee2d631ae49ea98a2cd72bc541ac1f59e3` |
| 6 | `lemma` | [coe_zero](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/coe-zero--c939e9375f0c092ec6c56b74.md) | 52 | `result-track:c939e9375f0c092ec6c56b74a828632ba043a39bc2b882e6a8c77bfa2b47a0ce` |
| 7 | `lemma` | [coe_one](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/coe-one--5df4eb0506b8ebc2b615a522.md) | 54 | `result-track:5df4eb0506b8ebc2b615a522046c643bd9b66b31f4c716500d0d15f03940ce34` |
| 8 | `elab` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/elab--40b797e528c62ef8ea7f56d9.md) | 61 | `declaration-track:40b797e528c62ef8ea7f56d9f4c9955285bf8e39f56b2019c6c990a8a552fd32` |
| 9 | `macro` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean/declarations/macro--ae20b614c3c5d5eb188fa850.md) | 85 | `declaration-track:ae20b614c3c5d5eb188fa8508847873bf7dd446465c51b40ee30cb0a6998a7fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef095e61d18625663d24b8a59571f7dccabcd89117a946a2475b70e8e33cba6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variante817f4889bf5f009dee21bea48bbabf1d9efeae182ff461beae96c3dafab8547.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
