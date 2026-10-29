-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalBytes.Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanonicalBytes.Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55","mathematical_subject":"Computation.DataStructures","original_sha256":"8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Core/Transport/Bytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Hash

/-!
# Canonical finite transport bytes

All integer encoders have explicit widths and little-endian order. Runtime
adapters must perform their width checks before calling these total Lean
functions. No process-local or time-varying value is introduced here.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalBytes.Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55

public section

namespace Surface.Core.Transport

abbrev CanonicalBytes := List UInt8

@[expose] def encodeU8 (value : Nat) : CanonicalBytes :=
  [UInt8.ofNat value]

@[expose] def encodeNatLE (width value : Nat) : CanonicalBytes :=
  (List.range width).map (fun index ↦
    UInt8.ofNat ((value / (256 ^ index)) % 256))

@[expose] def encodeU16LE (value : Nat) : CanonicalBytes :=
  encodeNatLE 2 value

@[expose] def encodeU32LE (value : Nat) : CanonicalBytes :=
  encodeNatLE 4 value

@[expose] def encodeU64LE (value : Nat) : CanonicalBytes :=
  encodeNatLE 8 value

@[expose] def encodeSignedLE (width : Nat) (value : Int) : CanonicalBytes :=
  encodeNatLE width (Int.toNat (value % (2 ^ (8 * width) : Nat)))

@[expose] def encodeI32LE (value : Int) : CanonicalBytes :=
  encodeSignedLE 4 value

@[expose] def encodeI64LE (value : Int) : CanonicalBytes :=
  encodeSignedLE 8 value

@[expose] def encodeUtf8 (value : String) : CanonicalBytes :=
  value.toUTF8.toList

@[expose] def encodeLengthPrefixedUtf8 (value : String) : CanonicalBytes :=
  encodeU32LE value.toUTF8.size ++ encodeUtf8 value

@[expose] def lowerHexNibble (character : Char) : Nat :=
  if character = '0' then 0 else if character = '1' then 1 else
  if character = '2' then 2 else if character = '3' then 3 else
  if character = '4' then 4 else if character = '5' then 5 else
  if character = '6' then 6 else if character = '7' then 7 else
  if character = '8' then 8 else if character = '9' then 9 else
  if character = 'a' then 10 else if character = 'b' then 11 else
  if character = 'c' then 12 else if character = 'd' then 13 else
  if character = 'e' then 14 else if character = 'f' then 15 else 0

@[expose] def decodeLowerHexPairs : List Char → CanonicalBytes
  | high :: low :: rest =>
      UInt8.ofNat (16 * lowerHexNibble high + lowerHexNibble low) ::
        decodeLowerHexPairs rest
  | _ => []

@[expose] def encodeHash256 (hash : Hash256) : CanonicalBytes :=
  decodeLowerHexPairs hash.hex.toList

@[surface_novel, surface_published]
theorem canonicalBytes_deterministic (bytes : CanonicalBytes)
    {left right : CanonicalBytes}
    (leftMaterial : left = bytes) (rightMaterial : right = bytes) :
    left = right := by
  rw [leftMaterial, rightMaterial]

end Surface.Core.Transport
