window.addEventListener('message', function (event) {
    const data = event.data;
    if (data.action === 'notify') {
        const container = document.getElementById('notifications');

        const notification = document.createElement('div');
        notification.classList.add('notification', data.type);
        notification.innerHTML = `<strong>${data.title}</strong><br>${data.message}`;

        container.appendChild(notification);

        setTimeout(() => {
            notification.style.opacity = '0';
            notification.style.transform = 'translateX(100%)';
            setTimeout(() => notification.remove(), 500);
        }, data.duration || 5000);
    }
});
