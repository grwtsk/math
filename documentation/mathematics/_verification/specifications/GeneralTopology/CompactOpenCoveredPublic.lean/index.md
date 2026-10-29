# Verification target: Compact Open Covered Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean.json)

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
| 1 | `def` | [IsCompactOpenCovered](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/iscompactopencovered.md) | 35 | `declaration-track:987c2022d13266f5ec0ff6d99c72eb7897d055b5e64035c6b3fba960fc5620d8` |
| 2 | `lemma` | [empty](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/empty.md) | 45 | `result-track:faa45ec1a9103757aadbc177a5ea2a004da8d684d53d5beb5781bc6805978f49` |
| 3 | `lemma` | [iff_of_unique](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/iff-of-unique.md) | 48 | `result-track:9977b3221e3297c5a2d2e95ff6ee8fdd44a0d7a128dd1e3b28e5350e7448e020` |
| 4 | `lemma` | [id_iff_isOpen_and_isCompact](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/id-iff-isopen-and-iscompact.md) | 56 | `result-track:045034bd963e3874751a006ec3de4fbe3c4bf28ef349d92e2fcaafa262e8394b` |
| 5 | `lemma` | [iff_isCompactOpenCovered_sigmaMk](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/iff-iscompactopencovered-sigmamk.md) | 63 | `result-track:368913c37a3189e63b362317e235a295a657015179828d361d6a1e1dcc8d635c` |
| 6 | `lemma` | [of_iUnion_eq_of_finite](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-iunion-eq-of-finite.md) | 84 | `result-track:5c9946903083582bca2ad6fb01f81de2712388a2e1995efc08ec211acf21e397` |
| 7 | `lemma` | [of_biUnion_eq_of_finite](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-biunion-eq-of-finite.md) | 92 | `result-track:e9830db3705a856fa723134ffc6daa03ce9bc8b15cc1e608610f9f015b43639d` |
| 8 | `lemma` | [of_biUnion_eq_of_isCompact](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-biunion-eq-of-iscompact.md) | 97 | `result-track:90408e8b79af93031754e0f43177ec0704520563966a8208e7fe692d282f0684` |
| 9 | `lemma` | [of_isCompact_of_forall_exists_isCompactOpenCovered](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-iscompact-of-forall-exists-iscompactopencovered.md) | 107 | `result-track:a79ea10841e9c97e21e74ccb7d4d17396bd4a71314e35284f147a44f930fe15e` |
| 10 | `lemma` | [image](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/image.md) | 118 | `result-track:3820374cda6567bef01469a65363849e54309ec6d38f5db127c5a3f3c1a018b8` |
| 11 | `lemma` | [of_finite](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-finite.md) | 122 | `result-track:df013d9d440a8977833c3044c82bee629b9f514121650661fdce87764f09e1e2` |
| 12 | `lemma` | [exists_mem_of_isBasis](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/exists-mem-of-isbasis.md) | 129 | `result-track:2f49fdadbecadd7512701026ca375d604cf7468a0f8835ccafc13f8aebe3758a` |
| 13 | `lemma` | [of_finite_of_isSpectralMap](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-finite-of-isspectralmap.md) | 156 | `result-track:30d0e970dcd199cc7457f24161a88e3cace4af97d9f1c9e8e90b007ee5e8d7cf` |
| 14 | `lemma` | [of_isOpenMap](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-isopenmap.md) | 165 | `result-track:25269fdb84ee06c1fb4263ed5e490e9668dc34c986b970c002d2df72a03e1576` |
| 15 | `lemma` | [of_comp](../../../../GeneralTopology/CompactOpenCoveredPublic.lean/declarations/of-comp.md) | 175 | `result-track:5801792700992059c8eac15e971ed144fcbea57d9927f5f5ed5d7b4e0a5b5b74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e752c661651d5d1d567a3666babd43d801687638d8a533624b07c20858b11a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
