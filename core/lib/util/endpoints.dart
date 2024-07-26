class PodcastsEndpoints {
  static const dnsListenNote = 'https://listen-api.listennotes.com/api/v2/';

  static String getBestPodcasts(int page) =>
      '${dnsListenNote}best_podcasts?page=$page&region=br&language=Portuguese';

  static String getPodcastForId(String id) =>
      '${dnsListenNote}podcasts/$id?sort=recent_first';
}
