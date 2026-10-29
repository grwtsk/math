# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Identifiers.Variant72884062b3ed7301faa3c3e02eb287adcb0823d38282f566b9207075976a1fed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebc0fb30bb03b67f607b2a69c1f3b0d3e7fa6aa0` · SHA-256 `787dc3696f504bb21aaf40740013dc4317fe18755496804c2c1f906598af5e50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.HorizonId.Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.HorizonId.Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/Identifiers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# WP0 finite-horizon identities

Stable custody identities for the finite-horizon Sonin core.  No mathematical
property is attached to these identifiers.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.HorizonId.Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PersistentCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PacketId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure TestRegistryId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CoefficientRingId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure MatrixId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure BasisRevision where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ProofId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CheckerId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure Digest where
  words : Array UInt64
deriving DecidableEq, Repr

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dfa1a5e7c33273a0915264861cf39f2522f5bd8b5e6eb295939e0da10f3f348 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Identifiers/Variant72884062b3ed7301faa3c3e02eb287adcb0823d38282f566b9207075976a1fed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
