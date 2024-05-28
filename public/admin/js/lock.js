$(document).ready(function() {
    // Vô hiệu hóa chuột phải
    $(document).on('contextmenu', function(e) {
        e.preventDefault();
    });

    // Vô hiệu hóa phím tắt sao chép (Ctrl+C, Ctrl+X)
    $(document).on('keydown', function(e) {
        if ((e.ctrlKey && (e.key === 'c' || e.key === 'x')) || (e.metaKey && (e.key === 'c' || e.key === 'x'))) {
            e.preventDefault();
        }
    });

    // Vô hiệu hóa kéo và thả
    $(document).on('dragstart', function(e) {
        e.preventDefault();
    });

    // Vô hiệu hóa phím tắt mở tab mới (Ctrl+T, Ctrl+N)
    $(document).on('keydown', function(e) {
        if ((e.ctrlKey && (e.key === 't' || e.key === 'n')) || (e.metaKey && (e.key === 't' || e.key === 'n'))) {
            e.preventDefault();
        }
    });

    // Vô hiệu hóa tổ hợp phím chuột phải (Ctrl+Click) để mở liên kết trong tab mới
    $(document).on('mousedown', function(e) {
        if ((e.ctrlKey || e.metaKey) && e.which === 1) {
            e.preventDefault();
        }
    });
});
